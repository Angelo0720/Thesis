﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="BFARv3.User.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="content-box-large">
            <div class="container-fluid">  
             <asp:Button ID="Button2" runat="server" Text="Edit Profile" CssClass="btn btn-primary signup" OnClick="Button2_Click"/>
                <h5>Last Name</h5>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
    <h5>First Name</h5>
                <asp:TextBox ID="TextBox2" runat="server"  CssClass="form-control" Enabled="False"></asp:TextBox>
    <h5>Middle Name</h5>
                <asp:TextBox ID="TextBox3" runat="server"  CssClass="form-control" Enabled="False"></asp:TextBox>
    <h5>Contact Number</h5>
                <asp:TextBox ID="TextBox4" runat="server"  CssClass="form-control" Enabled="False"></asp:TextBox>
    <h5>Email Address</h5>
                <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>


                <h5>Birthday</h5>
                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" Enabled="False"></asp:TextBox>
                            <asp:DropDownList ID="MonthDL" runat="server" cssClass="form-control" Visible="False">
                                <asp:ListItem Value="01">January</asp:ListItem>
                                <asp:ListItem Value="02">February</asp:ListItem>
                                <asp:ListItem Value="03">March</asp:ListItem>
                                <asp:ListItem Value="04">April</asp:ListItem>
                                <asp:ListItem Value="05">May</asp:ListItem>
                                <asp:ListItem Value="06">June</asp:ListItem>
                                <asp:ListItem Value="07">July</asp:ListItem>
                                <asp:ListItem Value="08">August</asp:ListItem>
                                <asp:ListItem Value="09">September</asp:ListItem>
                                <asp:ListItem Value="10">October</asp:ListItem>
                                <asp:ListItem Value="11">November</asp:ListItem>
                                <asp:ListItem Value="12">December</asp:ListItem>
                            </asp:DropDownList>

                            <asp:DropDownList ID="DayDL" runat="server" cssClass="form-control" Visible="False">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                                <asp:ListItem>31</asp:ListItem>
                            </asp:DropDownList>

                             <asp:DropDownList ID="YearDL" runat="server" cssClass="form-control" Visible="False">
                                 <asp:ListItem>2000</asp:ListItem>
                                 <asp:ListItem>1999</asp:ListItem>
                                 <asp:ListItem>1998</asp:ListItem>
                                 <asp:ListItem>1997</asp:ListItem>
                                 <asp:ListItem>1996</asp:ListItem>
                                 <asp:ListItem>1995</asp:ListItem>
                                 <asp:ListItem>1994</asp:ListItem>
                                 <asp:ListItem>1993</asp:ListItem>
                                 <asp:ListItem>1992</asp:ListItem>
                                 <asp:ListItem>1991</asp:ListItem>
                                 <asp:ListItem>1990</asp:ListItem>
                                 <asp:ListItem>1989</asp:ListItem>
                                 <asp:ListItem>1988</asp:ListItem>
                                 <asp:ListItem>1987</asp:ListItem>
                                 <asp:ListItem>1986</asp:ListItem>
                                 <asp:ListItem>1985</asp:ListItem>
                                 <asp:ListItem>1984</asp:ListItem>
                                 <asp:ListItem>1983</asp:ListItem>
                                 <asp:ListItem>1982</asp:ListItem>
                                 <asp:ListItem>1981</asp:ListItem>
                                 <asp:ListItem>1980</asp:ListItem>
                                 <asp:ListItem>1979</asp:ListItem>
                                 <asp:ListItem>1978</asp:ListItem>
                                 <asp:ListItem>1977</asp:ListItem>
                                 <asp:ListItem>1976</asp:ListItem>
                                 <asp:ListItem>1975</asp:ListItem>
                                 <asp:ListItem>1974</asp:ListItem>
                                 <asp:ListItem>1973</asp:ListItem>
                                 <asp:ListItem>1972</asp:ListItem>
                                 <asp:ListItem>1971</asp:ListItem>
                            </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn btn-primary signup" OnClick="Button1_Click" Enabled="False" />


                </div>
            </div>
</asp:Content>
