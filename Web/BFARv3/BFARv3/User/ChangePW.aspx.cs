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

namespace BFARv3.User
{

    public partial class ChangePW : System.Web.UI.Page
    {

        MySql.Data.MySqlClient.MySqlConnection myConn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text == (string)Session["password"])
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    if (TextBox2.Text == null)
                    {
                        string message = "Password Can't Be Blank!";

                        System.Text.StringBuilder sb = new System.Text.StringBuilder();

                        sb.Append("<script type = 'text/javascript'>");

                        sb.Append("window.onload=function(){");

                        sb.Append("alert('");

                        sb.Append(message);

                        sb.Append("')};");

                        sb.Append("</script>");

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    }
                    else
                    {


                        String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
                        myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
                        s = "UPDATE db_9f6091_lcemsdb.userinfo SET Password = @Password where User_ID=" + (string)Session["userid"];
                        cmd = new MySql.Data.MySqlClient.MySqlCommand(s, myConn);
                        myConn.Open();

                        cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
                        cmd.ExecuteNonQuery();
                        myConn.Close();

                        if (IsPostBack)
                        {
                            string message = "Change Password Complete!";

                            System.Text.StringBuilder sb = new System.Text.StringBuilder();

                            sb.Append("<script type = 'text/javascript'>");

                            sb.Append("window.onload=function(){");

                            sb.Append("alert('");

                            sb.Append(message);

                            sb.Append("')};");

                            sb.Append("</script>");

                            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


                            Session.Remove("password");
                            Session["password"] = TextBox2.Text;

                        }
                    }

                }
                else
                {
                    string message = "New Password Does Not Match!";

                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");

                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }


            }

            else
            {
                string message = "Old Passowrd Invalid!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
            }

        }
    }
}