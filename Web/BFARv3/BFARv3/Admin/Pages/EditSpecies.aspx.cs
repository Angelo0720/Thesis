using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using MySql.Data.MySqlClient;
using System.Configuration;



namespace BFARv3.Admin.Pages
{
    public partial class EditSpecies : System.Web.UI.Page
    { Boolean reset= false;

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


        protected void OnRowEditing(object sender, GridViewEditEventArgs e)
        {
            reset =true;
            gvImages.EditIndex = e.NewEditIndex;
            this.BindGrid();

        }

        protected void OnRowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
            GridViewRow row = gvImages.Rows[e.RowIndex];
            int SpeciesId = Convert.ToInt32(gvImages.DataKeys[e.RowIndex].Values[0]);
            string Scientificname = (row.FindControl("txtName") as TextBox).Text;
            FileUpload bytes = (FileUpload)gvImages.Rows[e.RowIndex].FindControl("FileUpload1");


            string constr = ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
            using (Stream fs = bytes.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    string filename = Path.GetFileName(bytes.PostedFile.FileName);
                    string contentType = bytes.PostedFile.ContentType;
                    byte[] bytess = br.ReadBytes((Int32)fs.Length);
                    constr = ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
                    using (MySqlConnection con = new MySqlConnection(constr))
                    {
                        string query = "UPDATE speciesinfo SET Scientific_Name = @Scientific_Name ,FileName = @FileName, Fish_Image = @Fish_Image, Extension = @Extension WHERE Species_ID = @Species_ID ";
                        using (MySqlCommand cmd = new MySqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Species_ID", SpeciesId);
                            cmd.Parameters.AddWithValue("@Scientific_Name", Scientificname);
                            cmd.Parameters.AddWithValue("@FileName", filename);
                            cmd.Parameters.AddWithValue("@Fish_Image", bytess);
                            cmd.Parameters.AddWithValue("@Extension", contentType);

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                            
                        }
                    }
                }
            }
            gvImages.EditIndex = -1;
            reset = false;
            this.BindGrid();
            successing();
        }

        protected void OnRowCancelingEdit(object sender, EventArgs e)
        {
            gvImages.EditIndex = -1;
            this.BindGrid();
        }


        protected void OnRowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (reset == false)
            {
                if (e.Row.RowType == DataControlRowType.DataRow)
                {
                    byte[] bytes = (byte[])(e.Row.DataItem as DataRowView)["Fish_Image"];
                    string base64String = Convert.ToBase64String(bytes, 0, bytes.Length);
                    (e.Row.FindControl("Image1") as Image).ImageUrl = "data:image/png;base64," + base64String;
                }
            }

        }


        protected void OnRowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int Species_ID = Convert.ToInt32(gvImages.DataKeys[e.RowIndex].Values[0]);
            string constr = ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
            using (MySqlConnection con = new MySqlConnection(constr))
            {
                using (MySqlCommand cmd = new MySqlCommand("DELETE FROM speciesinfo WHERE Species_ID = @Species_ID"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Parameters.AddWithValue("@Species_ID", Species_ID);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            this.BindGrid();
        }

        protected void gvImages_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        public void successing()
        {
            Response.Redirect(Request.Url.AbsoluteUri);


            string message = "Added Successfully! :)";

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