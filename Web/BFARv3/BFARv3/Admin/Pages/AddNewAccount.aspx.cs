using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BFARv3.Admin.Pages
{
    public partial class AddNewAccount : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        MySql.Data.MySqlClient.MySqlDataReader mdr;
        String queryStr;

        protected void Page_Load(object sender, EventArgs e)
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["WebAppConnString"].ToString();
            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";
            queryStr = "select * from db_9f6091_lcemsdb.userinfo WHERE User_ID=(SELECT MAX(User_ID) FROM USERINFO)";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                int ids = mdr.GetInt32("User_ID");
                int total = ids + 1;
                UserIDTextbox.Text = total.ToString();

                mdr.Close();
                conn.Close();
            }

        }

        protected void btnAddAcount_Click(object sender, EventArgs e)
        {
            updateData();
            clear_default();
        }
        public void updateData()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "INSERT INTO db_9f6091_lcemsdb.userinfo(User_ID,Last_Name, First_name, Middle_Name, User_Name, Password, Position, Assigned_Location, Access_Type, Contact_No, Email_Address, Birthday)" + "VALUES('" + UserIDTextbox.Text + "','" + LNTextbox.Text + "','" + FNTextbox.Text + "','" + MNTextbox.Text + "','" + UNTextbox.Text + "','" + PwdTextbox.Text + "','" +PositionDL.SelectedValue + "','" + DropDownList1.Text + "','" + ATypeDL.SelectedValue + "','" + CNTextbox.Text + "','" + EATextbox.Text + DropDownList4.SelectedValue + "','" + YearDL.SelectedValue + "-" + MonthDL.SelectedValue + "-" + DayDL.SelectedValue + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();

            string message = "Updated Successfully! :)";

            System.Text.StringBuilder sb = new System.Text.StringBuilder();

            sb.Append("<script type = 'text/javascript'>");

            sb.Append("window.onload=function(){");

            sb.Append("alert('");

            sb.Append(message);

            sb.Append("')};");

            sb.Append("</script>");

            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
        }

        public void clear_default()
        {
            LNTextbox.Text = "";
            FNTextbox.Text = "";
            MNTextbox.Text = "";
            UNTextbox.Text = "";
            PwdTextbox.Text = "";
            CNTextbox.Text = "";
            EATextbox.Text = "";
            MonthDL.SelectedIndex = 0;
            DayDL.SelectedIndex = 0;
            YearDL.SelectedIndex = 0;

            Response.Redirect("Success.aspx");

            string message = "Updated Successfully! :)";

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