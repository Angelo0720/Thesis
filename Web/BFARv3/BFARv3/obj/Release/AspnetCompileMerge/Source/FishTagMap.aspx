<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FishTagMap.aspx.cs" Inherits="BFARv3.FishTagMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyABjT7Gj7q4ngu9giBQGNcvOrW4xRQJpDw"
            type="text/javascript"></script>
    <script src="Scripts/TagMap.js"></script>
        <!-- Bootstrap Core CSS  HERE-->
    <link href="css/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet"/>

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css"/>
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'/>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'/>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/HomeStyleSheet.css" rel="stylesheet" />
    <style>
        #map{
            height:600px;
            width:700px;
        }
    </style>
</head>

<body onload="load()">
    <form id="form1" runat="server">
    <div>   
    </div>

        <div class="container">
                <div class="row">
                    <h1 class="col-md-6 col-md-offset-3">FishTag Map</h1>
                </div>
                <div class="row">
                    <div id="" class="col-md-4">
                        <br />
                        <br />
                        <div class="row bg-light-gray">
                            <h4>Tracker ID</h4>
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="col-xs-6">
                                    <asp:ListItem Value="GPS-001"></asp:ListItem>
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <button type="button" class="btn btn-primary" onclick="load()">Locate Fish</button>
                                <br />
                         <br />
                        </div>
                        <br /> <br />
                        <div class="row bg-light-gray">
                            <h4>Current Location</h4>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Latitude</h6>
                            <p>
                                <asp:TextBox ID="lat_textbox" runat="server" CssClass="col-xs-6" ClientIDMode="Static" Enabled="False" ></asp:TextBox>
                            </p>
                            <p>
                                &nbsp;</p>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Longitude</h6>
                            <p>
                                <asp:TextBox ID="lng_textbox" runat="server" CssClass="col-xs-6" ClientIDMode="Static" Enabled="False" ></asp:TextBox>
                            &nbsp;</p>
                            <p>
                                &nbsp;</p>
                            <h6>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Time</h6>
                            <p>
                                <asp:TextBox ID="time_textbox" runat="server" CssClass="col-xs-6" ClientIDMode="Static" Enabled="False" ></asp:TextBox>
                            &nbsp;</p>
                            <p>
                                &nbsp;</p>
                            <br />
                        </div>
                    </div>
                    <div id="map" class="col-md-8"></div>



                </div>
        </div>

        
    </form>
</body>
</html>
