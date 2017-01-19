using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.DataVisualization.Charting;
namespace BFARv3
{
    public partial class BoatsChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT Boat_Category, COUNT(*) FROM basicsurveyinfo GROUP BY Boat_Category";
                DataTable dt = GetData(query);
                string[] x = new string[dt.Rows.Count];
                int[] y = new int[dt.Rows.Count];


                Chart1.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = true;
                Chart1.ChartAreas["ChartArea1"].AxisX.LabelStyle.Enabled = true;
                Chart1.ChartAreas["ChartArea1"].AxisX.Title = "Boat Category";
                Chart1.ChartAreas["ChartArea1"].AxisY.Title = "Number of Boats";


                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToInt32(dt.Rows[i][1]);
                }

                Chart1.Series[0].Points.DataBindXY(x, y);
                Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;


            }
        }

        private DataTable GetData(string query)
        {
            DataTable ds = new DataTable();
            string conStr = "Server=MYSQL5015.Smarterasp.net;Database=db_9f6091_lcemsdb;Uid=9f6091_lcemsdb;Pwd=lcems2016;persistsecurityinfo=True";
            MySqlConnection con = new MySqlConnection(conStr);
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataAdapter adp = new MySqlDataAdapter(cmd);
            try
            {
                con.Open();
                adp.Fill(ds);

            }
            catch (Exception ex)
            {

            }
            return ds;
        }
    }
}