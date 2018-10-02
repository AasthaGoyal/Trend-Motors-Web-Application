<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="CookiesDemo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Paradise Restaurant Staff Login</h1>
            <p> Enter Username:
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
            </p>
            <p> Enter Password:
                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
            </p>
            <p> 
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="231px" />
            </p>
        </div>
    </form>
</body>
</html>
