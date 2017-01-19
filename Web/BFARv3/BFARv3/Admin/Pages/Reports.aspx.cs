using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using Microsoft.Reporting.WebForms;

namespace BFARv3.Admin.Pages
{
    public partial class Reports : System.Web.UI.Page
    {
        string report_type;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindData();
            }
            Button1.Click += new EventHandler(this.Button1_Click);
            DropDownList1.SelectedIndexChanged += new EventHandler(this.DropDownList1_SelectedIndexChanged);
        }

        private void BindData()
        {
            DropDownList1.Items.Add(new ListItem("User List","User List"));
            DropDownList1.Items.Add(new ListItem("User Logs","User Logs"));
            DropDownList1.Items.Add(new ListItem("Boat List","Boat List"));
            DropDownList1.Items.Add(new ListItem("Species List","Species List"));
            DropDownList1.Items.Add(new ListItem("Survey Report", "Survey Report"));
            DropDownList1.AutoPostBack = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue=="User List")
            {
                report_type = "User List";
                ReportViewer1.Reset();
                ReportDataSource rptSrc = new ReportDataSource("DataSetUserLIst", GetData(report_type));
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                ReportViewer1.LocalReport.ReportPath =@"rptUserList.rdlc";
                ReportViewer1.LocalReport.ReportEmbeddedResource= "rptUserList.rdlc";
                ReportViewer1.LocalReport.Refresh();
            }
            else if (DropDownList1.SelectedValue == "User Logs")
            {
                if ((TextBox1.Text == "") && (TextBox2.Text == ""))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Fill all parameter fields')", true);
                }
                else
                {
                    report_type = "User Logs";
                    ReportViewer1.Reset();
                    ReportDataSource rptSrc = new ReportDataSource("DataSetUserLogs", GetDataParams(report_type, TextBox1.Text, TextBox2.Text));
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                    ReportViewer1.LocalReport.ReportPath = @"rptUserLogs.rdlc";
                    ReportViewer1.LocalReport.ReportEmbeddedResource = "rptUserLogs.rdlc";
                    ReportViewer1.LocalReport.Refresh();
                }
                
            }
            else if (DropDownList1.SelectedValue == "Survey Report")
            {
                if ((TextBox1.Text == "") && (TextBox2.Text == ""))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Fill all parameter fields')", true);
                }
                else
                {
                    if ((TextBox1.Text == "") && (TextBox2.Text != ""))//date
                    {
                        report_type = "Survey Report via date";
                        ReportViewer1.Reset();
                        ReportDataSource rptSrc = new ReportDataSource("DataSetSurveyReport", GetDataParams(report_type, TextBox1.Text, TextBox2.Text));
                        ReportViewer1.LocalReport.DataSources.Clear();
                        ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                        ReportViewer1.LocalReport.ReportPath = @"rptSurvey.rdlc";
                        ReportViewer1.LocalReport.ReportEmbeddedResource = "rptSurvey.rdlc";
                        ReportViewer1.LocalReport.Refresh();
                    }
                    else if ((TextBox1.Text != "") && (TextBox2.Text == ""))//uid
                    {
                        report_type = "Survey Report via uid";
                        ReportViewer1.Reset();
                        ReportDataSource rptSrc = new ReportDataSource("DataSetSurveyReport", GetDataParams(report_type, TextBox1.Text, TextBox2.Text));
                        ReportViewer1.LocalReport.DataSources.Clear();
                        ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                        ReportViewer1.LocalReport.ReportPath = @"rptSurvey.rdlc";
                        ReportViewer1.LocalReport.ReportEmbeddedResource = "rptSurvey.rdlc";
                        ReportViewer1.LocalReport.Refresh();
                    }
                    else
                    {
                        report_type = "Survey Report";
                        ReportViewer1.Reset();
                        ReportDataSource rptSrc = new ReportDataSource("DataSetSurveyReport", GetDataParams(report_type, TextBox1.Text, TextBox2.Text));
                        ReportViewer1.LocalReport.DataSources.Clear();
                        ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                        ReportViewer1.LocalReport.ReportPath = @"rptSurvey.rdlc";
                        ReportViewer1.LocalReport.ReportEmbeddedResource = "rptSurvey.rdlc";
                        ReportViewer1.LocalReport.Refresh();
                    }

                }

            }

            else if (DropDownList1.SelectedValue == "Boat List")
            {
               
                    report_type = "Boat List";
                    ReportViewer1.Reset();
                    ReportDataSource rptSrc = new ReportDataSource("DataSetBoatList", GetData(report_type));
                    ReportViewer1.LocalReport.DataSources.Clear();
                    ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                    ReportViewer1.LocalReport.ReportPath = @"rptBoatList.rdlc";
                    ReportViewer1.LocalReport.ReportEmbeddedResource = "rptBoatList.rdlc";
                    ReportViewer1.LocalReport.Refresh();
            

            }
            else if (DropDownList1.SelectedValue == "Species List")
            {

                report_type = "Species List";
                ReportViewer1.Reset();
                ReportDataSource rptSrc = new ReportDataSource("DataSetSpeciesList", GetData(report_type));
                ReportViewer1.LocalReport.DataSources.Clear();
                ReportViewer1.LocalReport.DataSources.Add(rptSrc);
                ReportViewer1.LocalReport.ReportPath = @"rptSpeciesList.rdlc";
                ReportViewer1.LocalReport.ReportEmbeddedResource = "rptSpeciesList.rdlc";
                ReportViewer1.LocalReport.Refresh();


            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(DropDownList1.SelectedValue == "User Logs")
            {
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label1.Text = "FROM DATE [yyyy-MM-dd]:";
                Label2.Text = "TO DATE [yyyy-MM-dd]:";
            }
            else if (DropDownList1.SelectedValue == "Survey Report")
            {
                TextBox1.Visible = true;
                TextBox2.Visible = true;
                Label1.Visible = true;
                Label2.Visible = true;
                Label1.Text = "User ID";
                Label2.Text = "Sampling Date";
            }
            else
            {
                TextBox1.Visible = false;
                TextBox2.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
            }
        }

        private DataTable GetData(string rpt_type)
        {
            DataTable dt = new DataTable();
            string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
            switch(rpt_type)
            {
                case "User List":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT User_ID, Last_Name, First_Name, Middle_Name, Position, Assigned_Location FROM userinfo ORDER BY Position ASC", con);
                        adp.Fill(dt);
                    }
                    break;

                case "Boat List":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT * FROM boatinfo ORDER BY Boat_Name ASC", con);
                        adp.Fill(dt);
                    }
                    break;
                case "Species List":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT Species_ID, Scientific_Name FROM speciesinfo ORDER BY Scientific_Name ASC", con);
                        adp.Fill(dt);
                    }
                    break;
            }
            return dt;
        }

        private DataTable GetDataParams(string rpt_type, string fromDate, string toDate)
        {
            DataTable dt = new DataTable();
            string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["lcemsdbConnectionString"].ConnectionString;
            switch (rpt_type)
            {
                case "User Logs":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT userinfo.Last_Name, userinfo.First_Name, userinfo.Middle_Name, userlogs.Log_Date, userlogs.Log_Time, userlogs.Transaction_Details FROM userlogs INNER JOIN userinfo ON userlogs.User_ID = userinfo.User_ID WHERE userlogs.Log_Date >= '" + fromDate + "' AND userlogs.Log_Date <= '" + toDate + "'", con);
                        adp.Fill(dt);
                    }
                    break;

                case "Survey Report":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT basicsurveyinfo.Sample_Serial_No, boatinfo.Boat_Name, basicsurveyinfo.Total_Boat_Catch, basicsurveyinfo.Total_Weight, basicsurveyinfo.Fishing_Effort, basicsurveyinfo.Fishing_Gear, basicsurveyinfo.Boat_Category, speciesinfo.Scientific_Name, box.Sample_Species_Weight, userinfo.Last_Name, userinfo.First_Name, userinfo.Middle_Name, basicsurveyinfo.Sampling_Date FROM basicsurveyinfo INNER JOIN box ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No INNER JOIN boatinfo ON basicsurveyinfo.Boat_ID = boatinfo.Boat_ID INNER JOIN speciesinfo ON box.Species_ID = speciesinfo.Species_ID INNER JOIN userinfo ON basicsurveyinfo.User_ID = userinfo.User_ID WHERE userinfo.User_ID = '"+fromDate+"' AND basicsurveyinfo.Sampling_Date = '"+toDate+"'", con);
                        adp.Fill(dt);
                    }
                    break;
                case "Survey Report via date":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT basicsurveyinfo.Sample_Serial_No, boatinfo.Boat_Name, basicsurveyinfo.Total_Boat_Catch, basicsurveyinfo.Total_Weight, basicsurveyinfo.Fishing_Effort, basicsurveyinfo.Fishing_Gear, basicsurveyinfo.Boat_Category, speciesinfo.Scientific_Name, box.Sample_Species_Weight, userinfo.Last_Name, userinfo.First_Name, userinfo.Middle_Name, basicsurveyinfo.Sampling_Date FROM basicsurveyinfo INNER JOIN box ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No INNER JOIN boatinfo ON basicsurveyinfo.Boat_ID = boatinfo.Boat_ID INNER JOIN speciesinfo ON box.Species_ID = speciesinfo.Species_ID INNER JOIN userinfo ON basicsurveyinfo.User_ID = userinfo.User_ID WHERE basicsurveyinfo.Sampling_Date = '" + toDate + "'", con);
                        adp.Fill(dt);
                    }
                    break;
                case "Survey Report via uid":
                    using (MySqlConnection con = new MySqlConnection(conStr))
                    {
                        MySqlDataAdapter adp = new MySqlDataAdapter("SELECT basicsurveyinfo.Sample_Serial_No, boatinfo.Boat_Name, basicsurveyinfo.Total_Boat_Catch, basicsurveyinfo.Total_Weight, basicsurveyinfo.Fishing_Effort, basicsurveyinfo.Fishing_Gear, basicsurveyinfo.Boat_Category, speciesinfo.Scientific_Name, box.Sample_Species_Weight, userinfo.Last_Name, userinfo.First_Name, userinfo.Middle_Name, basicsurveyinfo.Sampling_Date FROM basicsurveyinfo INNER JOIN box ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No INNER JOIN boatinfo ON basicsurveyinfo.Boat_ID = boatinfo.Boat_ID INNER JOIN speciesinfo ON box.Species_ID = speciesinfo.Species_ID INNER JOIN userinfo ON basicsurveyinfo.User_ID = userinfo.User_ID WHERE userinfo.User_ID = '" + fromDate + "'", con);
                        adp.Fill(dt);
                    }
                    break;
            }
            return dt;
        }

    }
}