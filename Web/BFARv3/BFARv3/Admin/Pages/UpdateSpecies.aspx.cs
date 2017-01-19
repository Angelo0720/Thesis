using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
    using System.IO;
    using MySql.Data.MySqlClient;
    using System.Configuration;


namespace BFARv3.Admin.Pages
{
    public partial class RecordsMaintenance : System.Web.UI.Page
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
            queryStr = "select * from db_9f6091_lcemsdb.speciesinfo WHERE Species_ID=(SELECT MAX(Species_ID) FROM speciesinfo)";
            cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);
            mdr = cmd.ExecuteReader();
            if (mdr.Read())
            {
                int ids = mdr.GetInt32("Species_ID");
                int total = ids + 1;
                TextBox1.Text = total.ToString();

                mdr.Close();
                conn.Close();
            }
        }

        public void updateData()
        {
            string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
                    using (MySqlConnection con = new MySqlConnection(constr))
                    {
                        string query = "INSERT INTO speciesinfo(Species_ID,Scientific_Name,FileName, Fish_Image, Extension) VALUES (@Species_ID,@Scientific_Name, @FileName, @Fish_Image, @Extension)";
                        using (MySqlCommand cmd = new MySqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Species_ID", TextBox1.Text);
                            cmd.Parameters.AddWithValue("@Scientific_Name", TextBox2.Text);
                            cmd.Parameters.AddWithValue("@FileName", filename);
                            cmd.Parameters.AddWithValue("@Fish_Image", bytes);
                            cmd.Parameters.AddWithValue("@Extension", contentType);

                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();


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
            }
 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            if (FileUpload1.HasFile)
            {
                updateData();
            }
            else
            {
                string message = "Please select an Image first!";

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