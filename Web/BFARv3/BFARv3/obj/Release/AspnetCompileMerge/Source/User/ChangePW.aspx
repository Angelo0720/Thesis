<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="ChangePW.aspx.cs" Inherits="BFARv3.User.ChangePW" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-box-large">
        <h5>Old Password</h5>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        <h5>New Password</h5>
        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
        <h5>Re-Type New Password</h5>
        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Change Password" CssClass="btn btn-primary signup" OnClick="Button1_Click" />
    </div>
</asp:Content>
