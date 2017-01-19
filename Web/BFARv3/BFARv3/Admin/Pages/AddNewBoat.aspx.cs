using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BFARv3.Admin.Pages
{
    public partial class AddNewBoat : System.Web.UI.Page
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
        }


        public void updateData()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            conn.Open();
            queryStr = "";

            queryStr = "INSERT INTO db_9f6091_lcemsdb.boatinfo(Boat_ID,Boat_Name, Province, Town, Barangay)" + "VALUES('"+ TextBox1.Text + "','" + TextBoxBN.Text + "','" + TextBox3.Text +  "','" + TextBox4.Text + "','" + TextBox2.Text  +"')";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            cmd.ExecuteReader();
            conn.Close();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            updateData();
            clearData();


        }

        public void clearData()
        {
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBoxBN.Text = "";
            Response.Redirect("Success.aspx");

        }
    }
}