using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace BFARv3.User
{
    public partial class EditProfile : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader mdr;
        String s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            s = "UPDATE db_9f6091_lcemsdb.userinfo SET Last_Name = @Last_Name, First_Name = @First_Name, Middle_Name = @Middle_Name, Contact_No = @Contact_No, Email_Address = @Email_Address, Birthday = @Birthday where User_ID=" + (string)Session["userid"];
            cmd = new MySql.Data.MySqlClient.MySqlCommand(s, myConn);
            myConn.Open();

            cmd.Parameters.AddWithValue("@Last_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@First_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Middle_Name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Contact_No", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Email_Address", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Birthday", YearDL.SelectedValue + "-" + MonthDL.SelectedValue + "-" + DayDL.SelectedValue);

            cmd.ExecuteNonQuery();
            myConn.Close();

            if (IsPostBack)
            {
                string message = "Update Complete!";

                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");

                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

                Response.Redirect("Message.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            myConn.Open();
            s = "SELECT * FROM db_9f6091_lcemsdb.userinfo WHERE User_ID=" + (string)Session["userid"];
            cmd = new MySql.Data.MySqlClient.MySqlCommand(s, myConn);
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                TextBox1.Text = mdr.GetString("Last_Name");
                TextBox1.Enabled = true;
                TextBox2.Text = mdr.GetString("First_Name");
                TextBox2.Enabled = true;
                TextBox3.Text = mdr.GetString("Middle_Name");
                TextBox3.Enabled = true;
                TextBox4.Text = mdr.GetString("Contact_No");
                TextBox4.Enabled = true;
                TextBox5.Text = mdr.GetString("Email_Address");
                TextBox5.Enabled = true;
                TextBox9.Text = mdr.GetString("Birthday");
                TextBox1.Enabled = true;
                YearDL.Visible = true;
                MonthDL.Visible = true;
                DayDL.Visible = true;
                Button1.Enabled = true;
                mdr.Close();
                myConn.Close();
            }
        }
    }
}