<%@ Page Title="" Language="C#" MasterPageFile="~/Default Master.Master" AutoEventWireup="true" CodeBehind="BoatsChart.aspx.cs" Inherits="BFARv3.BoatsChart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="col-lg-12 text-center pagination-centered">
        <div class="row">
            <br/><br/>
               <h3 class="section-subheading text-muted">Boat Trends</h3>
        </div>
        <div class="row">
               <div class="row">
                    <div class="container">
                         <asp:Chart ID="Chart1" runat="server" Height="421px" Width="947px">
                               <Series>
                                  <asp:Series Name="Series1">
                                  </asp:Series>
                               </Series>
                               <ChartAreas>
                                   <asp:ChartArea Name="ChartArea1">
                                    </asp:ChartArea>
                               </ChartAreas>
                               </asp:Chart>
                    </div>
              </div>
            </div>
        </div>
    </div>
</asp:Content>
