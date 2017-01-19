<%@ Page Title="" Language="C#" MasterPageFile="~/Default Master.Master" AutoEventWireup="true" CodeBehind="FishingMap.aspx.cs" Inherits="BFARv3.FishingMap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
               <div class="row">
                   <br /><br /><br />
               </div>
                 <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                            <script src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyBas-YmcsHKWzwTeAEtbbIlQNyhXtKdznc&signed_in=true&libraries=visualization&callback=initMap" async defer></script>
                            <script src="js/FishingMapJs.js"></script>
                            <!-- Project Details Go Here -->
                                <div id="floating-panel">
                                  <button type="button" onclick="changeGradient()" class="btn btn-primary">Change gradient</button>
                                  <button type="button" onclick="changeRadius()" class="btn btn-primary">Change radius</button>
                                </div>
                                <div id="sidebar">
                                    <select id="selectedfg" onchange="toggleHeatmap()" class="form-control">
                                        <option value="FG1">West Philippine Sea</option>
                                        <option value="FG2">Manila Bay</option>
                                        <option value="FG3">Pacific Ocean</option>
                                        <option value="FG4">Baler Bay</option>
                                        <option value="FG5">Casapsapan Bay</option>
                                        <option value="FG6">Dingalan Bay</option>
                                    </select>
                                    <asp:Button ID="Button1" runat="server" Text="Select" CssClass="btn btn-primary" OnClientClick="PlotSelected()"/>
                                   <!-- <button type="button" onclick="PlotSelected()" class="btn btn-primary">Select Fishing Ground</button> -->
                                </div>
                                <div id="map"></div>
                    </div>
                </div>
                <div class="row">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-center">
                            <h3 class="section-subheading text-muted">Different Fishes Caught in their Respective Fishing Grounds</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-3">
                                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="West_Philippine_SeaLabel" runat="server" Text='<%# Eval("[West Philippine Sea]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="West_Philippine_SeaTextBox" runat="server" Text='<%# Bind("[West Philippine Sea]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                <td>There are currently no fishes recorded on West Philippine Sea.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="West_Philippine_SeaTextBox" runat="server" Text='<%# Bind("[West Philippine Sea]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="West_Philippine_SeaLabel" runat="server" Text='<%# Eval("[West Philippine Sea]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">West Philippine Sea</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="West_Philippine_SeaLabel" runat="server" Text='<%# Eval("[West Philippine Sea]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;West Philippine Sea&quot; FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'West Philippine Sea'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>
                            </div>

                            <div class="col-xs-6 col-sm-3">
                                <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Manila_BayLabel" runat="server" Text='<%# Eval("[Manila Bay]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Manila_BayTextBox" runat="server" Text='<%# Bind("[Manila Bay]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                <td>There are currently no fishes recorded on Manila Bay.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Manila_BayTextBox" runat="server" Text='<%# Bind("[Manila Bay]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Manila_BayLabel" runat="server" Text='<%# Eval("[Manila Bay]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">Manila Bay</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Manila_BayLabel" runat="server" Text='<%# Eval("[Manila Bay]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;Manila Bay&quot; FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'Manila Bay'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>
                            </div>

                            <div class="col-xs-6 col-sm-3">
                                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Pacific_OceanLabel" runat="server" Text='<%# Eval("[Pacific Ocean]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Pacific_OceanTextBox" runat="server" Text='<%# Bind("[Pacific Ocean]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                <td>There are currently no fishes recorded on Pacific Ocean.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Pacific_OceanTextBox" runat="server" Text='<%# Bind("[Pacific Ocean]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Pacific_OceanLabel" runat="server" Text='<%# Eval("[Pacific Ocean]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">Pacific Ocean</th>
                                                        </tr>
                                                        <tr runat="server" id="itemPlaceholder">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Pacific_OceanLabel" runat="server" Text='<%# Eval("[Pacific Ocean]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;Pacific Ocean&quot; 
FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'Pacific Ocean'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>
                            </div>

                            <div class="col-xs-6 col-sm-3">
                                <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Baler_BayLabel" runat="server" Text='<%# Eval("[Baler Bay]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Baler_BayTextBox" runat="server" Text='<%# Bind("[Baler Bay]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                <td>There are currently no fishes recorded on Baler Bay.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Baler_BayTextBox" runat="server" Text='<%# Bind("[Baler Bay]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Baler_BayLabel" runat="server" Text='<%# Eval("[Baler Bay]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">Baler Bay</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Baler_BayLabel" runat="server" Text='<%# Eval("[Baler Bay]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;Baler Bay&quot; FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'Baler Bay'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>
                            </div>
                         </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-3">

                                <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Casapsapan_BayLabel" runat="server" Text='<%# Eval("[Casapsapan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Casapsapan_BayTextBox" runat="server" Text='<%# Bind("[Casapsapan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                
                                                <td>There are currently no fishes recorded on Casapsapan Bay.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Casapsapan_BayTextBox" runat="server" Text='<%# Bind("[Casapsapan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Casapsapan_BayLabel" runat="server" Text='<%# Eval("[Casapsapan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">Casapsapan Bay</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Casapsapan_BayLabel" runat="server" Text='<%# Eval("[Casapsapan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;Casapsapan Bay&quot; FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'Casapsapan Bay'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>

                            </div>
                            <div class="col-xs-6 col-sm-3">

                                <asp:ListView ID="ListView6" runat="server" DataSourceID="SqlDataSource6">
                                    <AlternatingItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Dingalan_BayLabel" runat="server" Text='<%# Eval("[Dingalan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </AlternatingItemTemplate>
                                    <EditItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Dingalan_BayTextBox" runat="server" Text='<%# Bind("[Dingalan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        <table runat="server" style="">
                                            <tr>
                                                
                                                <td>There are currently no fishes recorded on Dingalan Bay.</td>
                                            </tr>
                                        </table>
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="Dingalan_BayTextBox" runat="server" Text='<%# Bind("[Dingalan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </InsertItemTemplate>
                                    <ItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Dingalan_BayLabel" runat="server" Text='<%# Eval("[Dingalan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <table runat="server">
                                            <tr runat="server">
                                                <td runat="server">
                                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                                        <tr runat="server" style="">
                                                            <th runat="server">Dingalan Bay</th>
                                                        </tr>
                                                        <tr id="itemPlaceholder" runat="server">
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr runat="server">
                                                <td runat="server" style=""></td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <tr style="">
                                            <td>
                                                <asp:Label ID="Dingalan_BayLabel" runat="server" Text='<%# Eval("[Dingalan Bay]") %>' />
                                            </td>
                                        </tr>
                                    </SelectedItemTemplate>
                                </asp:ListView>
                                <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:lcemsdbConnectionString %>" ProviderName="<%$ ConnectionStrings:lcemsdbConnectionString.ProviderName %>" SelectCommand="SELECT speciesinfo.Scientific_Name
AS &quot;Dingalan Bay&quot; FROM basicsurveyinfo 
INNER JOIN box 
ON basicsurveyinfo.Sample_Serial_No = box.Sample_Serial_No 
INNER JOIN speciesinfo
ON box.Species_ID = speciesinfo.Species_ID WHERE basicsurveyinfo.Fishing_Ground = 'Dingalan Bay'
GROUP BY speciesinfo.Scientific_Name"></asp:SqlDataSource>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
</asp:Content>
