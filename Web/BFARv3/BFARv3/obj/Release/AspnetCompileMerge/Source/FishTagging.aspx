<%@ Page Title="" Language="C#" MasterPageFile="~/Default Master.Master" AutoEventWireup="true" CodeBehind="FishTagging.aspx.cs" Inherits="BFARv3.FishTagging" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row">
            <br />
            <br />
        </div>    
        <div class="container">
                <div class="row">
                     
                    <h1 class="col-md-6 col-md-offset-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;FishTag Map</h1>
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
                    <div id="map" class="col-md-8" style="height:600px;width:750px;"></div>



                </div>
        </div>
</asp:Content>
