<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="try chart.aspx.cs" Inherits="BFARv3.try_chart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
                <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                                 <div class="col-xs-6 col-sm-3">
                                  <h5>From Date</h5>
                                  </div>
                                  <div class="col-xs-6 col-sm-3">
                                      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                  </div>

                                  <!-- Add the extra clearfix for only the required viewport -->
                                  <div class="clearfix visible-xs-block"></div>

                                  <div class="col-xs-6 col-sm-3">
                                      <h5>From Date</h5>
                                  </div>
                                  <div class="col-xs-6 col-sm-3">
                                      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                  </div>
                                                            <div class="row">
                                    <asp:Button ID="Button1" runat="server" Text="View" />
                                </div>
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
    </form>
</body>
</html>
