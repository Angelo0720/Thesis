<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="EditSpecies.aspx.cs" Inherits="BFARv3.Admin.Pages.EditSpecies" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-box-large pre-scrollable">                 
    <div class="col-md-4 col-md-offset-3">
                           <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false"
                               DataKeyNames="Species_ID"
                                OnRowEditing="OnRowEditing" OnRowCancelingEdit="OnRowCancelingEdit" OnRowDataBound="OnRowDataBound"
                                OnRowUpdating="OnRowUpdating" OnRowDeleting="OnRowDeleting"
                                EmptyDataText="No records has been added." CssClass="table table-striped table-hover table-condensed small-top-margin" OnSelectedIndexChanged="gvImages_SelectedIndexChanged" >
                             <Columns>
                                <asp:TemplateField HeaderText="Species ID" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server" Text='<%# Eval("Species_ID") %>'></asp:Label>
                                    </ItemTemplate>
                                     <ItemStyle Width="150px"></ItemStyle>
                                </asp:TemplateField>


                                <asp:TemplateField HeaderText="Scientific Name" ItemStyle-Width="150">
                                    <ItemTemplate>
                                        <asp:Label ID="lblName" runat="server" Text='<%# Eval("Scientific_Name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtName" runat="server" Text='<%# Eval("Scientific_Name") %>'></asp:TextBox>
                                    </EditItemTemplate>    
                                     <ItemStyle Width="150px"></ItemStyle>
                                </asp:TemplateField>


                                   <asp:TemplateField HeaderText="Fish Image">
                                      <ItemTemplate>
                                         <asp:Image ID="Image1" ImageUrl='<%# Eval("Fish_Image") %>' runat="server" Height="250" Width="350" />
                                     </ItemTemplate>
                                       <EditItemTemplate>
                                            <asp:Image ID="UpdateImage" runat="server" Height="250" Width="350" ImageUrl='<%# Eval("Fish_Image") %>'/>
                                            <br />
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
                                      </EditItemTemplate>
                                   </asp:TemplateField> 

                                <asp:CommandField ButtonType="Link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="150">
                                <ItemStyle Width="150px"></ItemStyle>
                                </asp:CommandField>
                               </Columns>

                            </asp:GridView>
                    </div>
        </div>
</asp:Content>
