<%@ Page Title="Record Maintenance" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UpdateSpecies.aspx.cs" Inherits="BFARv3.Admin.Pages.RecordsMaintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="content-box-large">
    <div class="container-fluid">
  <div class="form-group">
    <label for="Specie ID">Species ID</label>
    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>

    <label for="Specie Name">Species Name</label>


    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
     </div>
    <div class="form-group">
    <label for="exampleInputFile">File input</label>
      <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
        <p class="help-block">
            <asp:Image ID="Image1" runat="server" Height="83px" Visible="False" Width="134px" />
        </p>
        <p class="help-block">
          <asp:Button ID="Button1" runat="server" Text="Add" CssClass="btn btn-primary signup" OnClick="Button1_Click" />
      </p>
        </div>
  </div>
</div>
</asp:Content>
