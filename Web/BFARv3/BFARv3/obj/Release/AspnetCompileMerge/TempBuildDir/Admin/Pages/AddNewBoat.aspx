<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewBoat.aspx.cs" Inherits="BFARv3.Admin.Pages.AddNewBoat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        		  			<div class="content-box-large">
                                  <div class="container-fluid">
			                <h2>Add New Boat
                                </h2>
                                      <h5>Boat ID</h5>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                      <h5>Boat Name</h5>
			                   <asp:TextBox ID="TextBoxBN" runat="server" CssClass="form-control"></asp:TextBox>
                                      <h5>Province</h5>
                                      <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                                      <h5>Town</h5>
                                      <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                                      <h5>Baranggay</h5>
                                      <asp:TextBox ID="TextBox2" cssclass="form-control" runat="server"></asp:TextBox>
			                    <div class="action">
                                    <br />
			                    <asp:Button CssClass="btn btn-primary signup" ID="Button1" runat="server" Text="Add" OnClick="Button1_Click1" />
			                </div>                
			                </div>
                        </div>
</asp:Content>
