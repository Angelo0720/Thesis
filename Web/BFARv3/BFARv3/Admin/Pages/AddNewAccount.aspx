<%@ Page Title="Accounts Management" Language="C#" MasterPageFile="~/Admin/Pages/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddNewAccount.aspx.cs" Inherits="BFARv3.Admin.Pages.AddNewAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    		  			<div class="content-box-large">
                              <div class="container-fluid">
			                <h2>Add New Account</h2>
                              <h5>User ID</h5>
			                <asp:TextBox ID="UserIDTextbox" runat="server" cssClass="form-control" placeholder="User ID" MaxLength="8" Enabled="False"></asp:TextBox>
                              <h5>Last Name</h5>
			                <asp:TextBox ID="LNTextbox" runat="server" cssClass="form-control" placeholder="Last Name"></asp:TextBox>

                              <h5>First Name</h5>
			                <asp:TextBox ID="FNTextbox" runat="server" cssClass="form-control" placeholder="First Name"></asp:TextBox>
                             
                              <h5>Middle Name</h5>
			                <asp:TextBox ID="MNTextbox" runat="server" cssClass="form-control" placeholder="Middle Name"></asp:TextBox>
                            
                              <h5>Username</h5>
			                <asp:TextBox ID="UNTextbox" runat="server" cssClass="form-control" placeholder="Username"></asp:TextBox>
                            
                              <h5>Password</h5>
			                <asp:TextBox ID="PwdTextbox" runat="server" cssClass="form-control" placeholder="Password" MaxLength="100" TextMode="Password"></asp:TextBox>
                             
                              <h5>Position</h5>
                            <asp:DropDownList ID="PositionDL" runat="server" CssClass="form-control">
                                <asp:ListItem Selected="True">Enumerator</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Project Leader</asp:ListItem>
                            </asp:DropDownList>

                              <h5>Assigned Location
                                  </h5>

                                  <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                      <asp:ListItem Value="Diniog"></asp:ListItem>
                                      <asp:ListItem Value="Busok-busok"></asp:ListItem>
                                      <asp:ListItem Value="Poblacion"></asp:ListItem>
                                      <asp:ListItem Value="Dinadiawan"></asp:ListItem>
                                      <asp:ListItem Value="Dingalan Fishport"></asp:ListItem>
                                      <asp:ListItem Value="Zabali"></asp:ListItem>
                                      <asp:ListItem Value="Puerto Rivas"></asp:ListItem>
                                      <asp:ListItem Value="Landing"></asp:ListItem>
                                      <asp:ListItem Value="Sabang"></asp:ListItem>
                                      <asp:ListItem Value="Pag-Asa"></asp:ListItem>
                                      <asp:ListItem Value="Wawa"></asp:ListItem>
                                      <asp:ListItem Value="Tabing-Ilog"></asp:ListItem>
                                      <asp:ListItem Value="St. Francis 1"></asp:ListItem>
                                      <asp:ListItem Value="Townsite"></asp:ListItem>
                                      <asp:ListItem Value="Capunitan"></asp:ListItem>
                                  </asp:DropDownList>
                             
                              <h5>Access Type</h5>
                            <asp:DropDownList ID="ATypeDL" runat="server" CssClass="form-control">
                                <asp:ListItem Selected="True">Enumerator</asp:ListItem>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>Project Leader</asp:ListItem>
                            </asp:DropDownList>
                    
                              <h5>Contact Number</h5>
			                <asp:TextBox ID="CNTextbox" runat="server" cssClass="form-control" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                             
                            <h5>Email Address</h5>
			                <asp:TextBox ID="EATextbox" runat="server" cssClass="form-control" placeholder="Email Address"></asp:TextBox>
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                    <asp:ListItem>@yahoo.com</asp:ListItem>
                    <asp:ListItem>@gmail.com</asp:ListItem>
                    <asp:ListItem>@rocketmail.com</asp:ListItem>
                    <asp:ListItem>@ymail.com</asp:ListItem>
                </asp:DropDownList>
                            <h5>Birthday</h5>
                            <asp:DropDownList ID="MonthDL" runat="server" cssClass="form-control">
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

                            <asp:DropDownList ID="DayDL" runat="server" cssClass="form-control">
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

                             <asp:DropDownList ID="YearDL" runat="server" cssClass="form-control">
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
                              <br />
			                <div class="action">
			                   <asp:Button ID="btnAddAcount" runat="server" Text="Add Account" cssClass="btn btn-primary signup" OnClick="btnAddAcount_Click"/>
			                </div>                
			            </div>
                    </div>





</asp:Content>
