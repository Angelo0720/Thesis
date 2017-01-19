using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;
using System.Data.SqlClient;
using System.Web.Security;

namespace BFARv3
{
    public partial class Default : System.Web.UI.Page
    {


        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["lcemsdbconnectionstring"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand())
                {
                    cmd.CommandText = "SELECT Species_ID, Scientific_Name ,Fish_Image FROM speciesinfo";
                    cmd.Connection = con;
                    using (MySqlDataAdapter sda = new MySqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gvImages.DataSource = dt;
                        gvImages.DataBind();
                    }
                }
            }
        }
        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["Fish_Image"];
                string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                (e.Row.FindControl("Image1") as Image).ImageUrl = "data:image/png;base64," + base64String;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
        }

        protected void LogInHandler(object sender, AuthenticateEventArgs e)
        {


        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
        }
    }
}