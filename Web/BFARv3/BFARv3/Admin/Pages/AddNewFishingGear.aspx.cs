using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BFARv3.Admin.Pages
{
    public partial class AddNewFishingGear : System.Web.UI.Page
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
            queryStr = "select * from db_9f6091_lcemsdb.geartypeinfo WHERE Fishing_Gear_ID=(SELECT MAX(Fishing_Gear_ID) FROM geartypeinfo)";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                int ids = mdr.GetInt32("Fishing_Gear_ID");
                int total = ids + 1;
                TextBox1.Text = total.ToString();

                mdr.Close();
                conn.Close();
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            updateData();
        }
        public void updateData()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "INSERT INTO db_9f6091_lcemsdb.geartypeinfo (Gear_Name)" + "VALUES('"+ TextBox2.Text + "')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();

            Response.Redirect("Success.aspx");
        }

    }
}