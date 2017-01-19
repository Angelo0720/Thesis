using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace BFARv3.Admin.Pages
{
    public partial class EditAccounts : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection myConn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader mdr;
        String s;

        protected void Page_Load(object sender, EventArgs e)

        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            myConn.Open();
            s = "SELECT * FROM db_9f6091_lcemsdb.userinfo WHERE User_ID=" + int.Parse(DropDownList1.SelectedValue);
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
                DropDownList2.SelectedValue = mdr.GetString("Assigned_Location");
                DropDownList2.Enabled = true;
                DropDownList3.SelectedValue = mdr.GetString("Access_Type");
                DropDownList3.Enabled = true;
                TextBox7.Text = mdr.GetString("Contact_No");
                TextBox7.Enabled = true;
                TextBox8.Text = mdr.GetString("Email_Address");
                TextBox8.Enabled = false;
                TextBox10.Enabled = true;
                TextBox10.Visible = true;
                DropDownList4.Visible = true;
                TextBox9.Text = mdr.GetString("Birthday");
                YearDL.Visible = true;
                MonthDL.Visible = true;
                DayDL.Visible = true;
                DropDownList4.Enabled = true;
                Button1.Enabled = true;
                Button3.Enabled = true;

                mdr.Close();
                myConn.Close();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            myConn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            s = "UPDATE db_9f6091_lcemsdb.userinfo SET Last_Name = @Last_Name, First_Name = @First_Name, Middle_Name = @Middle_Name, Assigned_Location = @Assigned_Location, Access_Type = @Access_Type, Contact_No = @Contact_No, Email_Address = @Email_Address, Birthday = @Birthday where User_ID='" + DropDownList1.SelectedValue + "'";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(s, myConn);
            myConn.Open();

            cmd.Parameters.AddWithValue("@Last_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@First_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Middle_Name", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Assigned_Location", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@Access_Type", DropDownList3.SelectedValue);
            cmd.Parameters.AddWithValue("@Contact_No", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Email_Address", TextBox10.Text + DropDownList4.SelectedValue);
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
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox7.Text = "";
                TextBox8.Text = "";
                TextBox9.Text = "";
                TextBox1.Enabled = false;
                TextBox2.Enabled = false;
                TextBox3.Enabled = false;
                TextBox7.Enabled = false;
                TextBox8.Enabled = false;
                TextBox9.Enabled = false;
                TextBox10.Visible = false;
                DropDownList4.Visible = false;
                DropDownList4.Enabled = false;
                DropDownList2.Enabled = false;
                DropDownList3.Enabled = false;
                YearDL.Visible = false;
                MonthDL.Visible = false;
                DayDL.Visible = false;
                Button1.Enabled = false;
                Button3.Enabled = false;

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int User_ID = Convert.ToInt32(DropDownList1.SelectedValue);
            string constr = ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM userinfo WHERE User_ID = @User_ID"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@User_ID", User_ID);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }

            string message = "Deleted Successfully!!";

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