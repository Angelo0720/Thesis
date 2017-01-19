<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BFARv3.Login" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>LogIn Page</title>
    <link href="css/LogInCss.css" rel="stylesheet" />
    <link href="css/agency.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
</head>
<body>
        <form id="form1" runat="server">
    <div class="col-md-4"></div>
    
    <div class="col-md-4">
      <section class="login-form">
        <form method="post" action="#" role="login">
            <img src="css/BFAR_logo-300x120.png" class="img-responsive" alt="" />
    <div>
    <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="#FF3300"></asp:Label><br />
     <asp:Label ID="Label2" runat="server" Text="Name" Font-Bold="True"
             BackColor="#FFFF66" ForeColor="#FF3300"></asp:Label>
        <asp:TextBox ID="TextBox_user_name" runat="server" ForeColor="#993300" CssClass="form-control"></asp:TextBox><br />
        <asp:Label ID="Label3" runat="server" Text="Password" Font-Bold="True"
             BackColor="#FFFF66" ForeColor="#FF3300"></asp:Label>
        <asp:TextBox ID="TextBox_password" CssClass="form-control" runat="server" ForeColor="#CC6600"
            TextMode="Password"></asp:TextBox><br />
        <asp:Button ID="btn_login" runat="server" Text="Login" CssClass="btn btn-primary signup form-control" Font-Bold="True"
            onclick="btn_login_Click"  /><br />
    </div>

          
        </form>
       
      </section>  
      </div>
      


    </form>

</body>
</html>
