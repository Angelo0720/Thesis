<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditFishingGear.aspx.cs" Inherits="BFARv3.Admin.Pages.EditFishingGear" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-box-large pre-scrollable">
            <div class="scrolling-table-container">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Fishing_Gear_ID"
                    OnRowDataBound="OnRowDataBound" OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                    OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting"
                    EmptyDataText="No records has been added." CssClass="table table-striped table-hover table-condensed small-top-margin" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:TemplateField HeaderText="Fishing Gear ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Fishing_Gear_ID") %>'></asp:Label>
                            </ItemTemplate>

                    <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Fishing Gear Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Gear_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Gear_Name") %>'></asp:TextBox>
                            </EditItemTemplate>

                    <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>
                        <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
                        <ItemStyle Width="150px"></ItemStyle>
                        </asp:CommandField>
                    </Columns>
                        <PagerSettings FirstPageText="First" LastPageText="Last" PageButtonCount="5" />
                        <PagerStyle BorderStyle="Solid" />
                    </asp:GridView>
                </div>
    </div>
</asp:Content>
