using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using MySql.Data.MySqlClient;


namespace BFARv3
{
    public partial class Login : System.Web.UI.Page
    {
        string strcon = "Server=MYSQL5015.Smarterasp.net;Database=db_9f6091_lcemsdb;Uid=9f6091_lcemsdb;Pwd=lcems2016;";
        string str;
        MySqlCommand com;
        object obj;
        string usertype;

        MySql.Data.MySqlClient.MySqlConnection myConn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader mdr;
        String s;
        string UName;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            MySqlConnection con = new MySqlConnection(strcon);
            con.Open();
            str = "select count(*) from userinfo where User_Name = @User_Name and Password = @Password";
            com = new MySqlCommand(str, con);
            com.CommandType = CommandType.Text;
            com.Parameters.AddWithValue("@User_Name", TextBox_user_name.Text);
            com.Parameters.AddWithValue("@Password", TextBox_password.Text);
            obj = com.ExecuteScalar();
            if (Convert.ToInt32(obj) != 0)
            {
                UName=TextBox_user_name.Text;
                String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
                myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                myConn.Open();
                s = "select * from db_9f6091_lcemsdb.userinfo where User_Name='" + TextBox_user_name.Text+"'";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(s, myConn);
                mdr = cmd.ExecuteReader();
                if (mdr.Read())
                {
                    usertype = mdr.GetString("Access_Type");
                    Session["userid"] = mdr.GetString("User_ID");
                    Session["username"] = mdr.GetString("User_Name");
                    Session["accesstype"] = mdr.GetString("Access_Type");
                    Session["password"] = mdr.GetString("Password");

                    if ((string)Session["accesstype"] == "Admin")
                    {
                        Response.Redirect("/Admin/Pages/AdminHome.aspx");
                    }
                    else
                    {
                        Response.Redirect("/User/Message.aspx");
                    }
                }
                else
                {
                    string message = "No Data!";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    mdr.Close();
                    myConn.Close();
                }


            }
            else
            {
                lb1.Text = "invalid user name and password";
            }
            con.Close();
        }
    }
}