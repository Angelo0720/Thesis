<%@ Page Title="" Language="C#" MasterPageFile="~/Default Master.Master" AutoEventWireup="true" CodeBehind="FGChart.aspx.cs" Inherits="BFARv3.BoatChart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-lg-12 text-center pagination-centered">
        <div class="row">
            <br/><br/>
               <h3 class="section-subheading text-muted">Fishing Gear</h3>
        </div>
        <div class="row">
            <asp:Chart ID="Chart1" runat="server" Height="381px" Width="662px">
            <Series>
                <asp:Series ChartType="Pie" Label="#PERCENT" Legend="Legend1" LegendText="#VALX" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            <Legends>
                <asp:Legend Docking="Bottom" LegendStyle="Row" Name="Legend1">
                </asp:Legend>
            </Legends>
            <Titles>
                <asp:Title Font="Arial, 15.75pt, style=Bold" Name="Title1" Text="Most Used Fishing Gears">
                </asp:Title>
            </Titles>
        </asp:Chart>
            </div>
        </div>
    </div>
</asp:Content>
