using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.DataVisualization.Charting;

namespace BFARv3
{
    public partial class BoatChart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string query = "SELECT Fishing_Gear, (COUNT(*)/(SELECT COUNT(*) FROM basicsurveyinfo)) AS 'Percentage'  from basicsurveyinfo GROUP BY Fishing_Gear LIMIT 10";
                DataTable dt = GetData(query);
                string[] x = new string[dt.Rows.Count];
                double[] y = new double[dt.Rows.Count];


                Chart1.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = true;
                Chart1.ChartAreas["ChartArea1"].AxisX.LabelStyle.Enabled = true;
                Chart1.ChartAreas["ChartArea1"].AxisY.LabelStyle.Enabled = true;
                Chart1.ChartAreas["ChartArea1"].AxisX.Title = "Fishing Gear";
                Chart1.ChartAreas["ChartArea1"].AxisY.Title = "Percentage";

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    x[i] = dt.Rows[i][0].ToString();
                    y[i] = Convert.ToDouble(dt.Rows[i][1]);
                }
                foreach (DataPoint p in Chart1.Series[0].Points)
                {
                    p.Label = "#PERCENT\n#VALX";
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