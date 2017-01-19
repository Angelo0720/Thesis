<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="BFARv3.Admin.Pages.Reports" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="col-lg-12 text-center">
            <h2 class="section-heading">Select Report</h2>
        </div>

    <div class="row">
        <div class="col-xs-6 col-sm-4"></div>
        <div class="col-xs-6 col-sm-4">
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div class="col-xs-6 col-sm-4"></div>
    </div>

    <div class="row">
        <br />
    </div>

    <div class="row">
        <div class="col-xs-6 col-sm-3">
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False" Height="20px"></asp:Label>
        </div>
        <div class="col-xs-6 col-sm-3">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Visible="False"></asp:TextBox>
        </div>
        <div class="col-xs-6 col-sm-3">
            <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Height="20px"></asp:Label>
        </div>
        <div class="col-xs-6 col-sm-3">
            <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Visible="False"></asp:TextBox>
        </div>
    </div>

    <div class="row">
        <br />
    </div>

    <div class="row">
        <div class="col-xs-6 col-sm-4"></div>
        <div class="col-xs-6 col-sm-4">
            <asp:Button ID="Button1" runat="server" Text="Generate Report" cssclass="btn btn-primary signup form-control" OnClick="Button1_Click"/>
        </div>
        <div class="col-xs-6 col-sm-4"></div>
    </div>

    <div class="content-box-large">
        <br />
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="1025px">
        </rsweb:ReportViewer>

        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>

    </div>
</asp:Content>
