<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewFishingGear.aspx.cs" Inherits="BFARv3.Admin.Pages.AddNewFishingGear" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content-box-large">
            <h5>Fishing Gear ID</h5>
            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Enabled="False" ></asp:TextBox>
            <h5>Fishing Gear Name</h5>
            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
            
            <br />
                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary signup" Text="Add" OnClick="Button2_Click" />
            

    </div>
</asp:Content>
