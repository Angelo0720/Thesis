<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modal1.aspx.cs" Inherits="BFARv3.Modal1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
    </form>
</body>
</html>
