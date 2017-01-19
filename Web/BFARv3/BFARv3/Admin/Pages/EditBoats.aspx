<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditBoats.aspx.cs" Inherits="BFARv3.Admin.Pages.EditBoats" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content-box-large pre-scrollable">
            <div class="container-fluid">
            <div class="scrolling-table-container">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Boat_ID"
                    OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit"
                    OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting"
                    EmptyDataText="No records has been added." CssClass="table table-striped table-hover table-condensed small-top-margin" >
                    <Columns>
                    <asp:TemplateField HeaderText="Boat ID" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblID" runat="server" Text='<%# Eval("Boat_ID") %>'></asp:Label>
                            </ItemTemplate>

                    <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Boat Name" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblName" runat="server" Text='<%# Eval("Boat_Name") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Boat_Name") %>'></asp:TextBox>
                            </EditItemTemplate>    
                    <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Province" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblProvince" runat="server" Text='<%# Eval("Province") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtProvince" runat="server" Text='<%# Eval("Province") %>'></asp:TextBox>
                            </EditItemTemplate>
                             <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Town" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblTown" runat="server" Text='<%# Eval("Town") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtTown" runat="server" Text='<%# Eval("Town") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemStyle Width="150px"></ItemStyle>
                        </asp:TemplateField>


                        <asp:TemplateField HeaderText="Barangay" ItemStyle-Width="150">
                            <ItemTemplate>
                                <asp:Label ID="lblBarangay" runat="server" Text='<%# Eval("Barangay") %>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtBarangay" runat="server" Text='<%# Eval("Barangay") %>'></asp:TextBox>
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
    </div>
</asp:Content>
