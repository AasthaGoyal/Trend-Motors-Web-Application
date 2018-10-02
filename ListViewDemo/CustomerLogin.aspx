<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="ListViewDemo.CustomerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
h1{font-size:2.5rem}h1{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}h1{margin-top:0;margin-bottom:.5rem}*{text-shadow:none!important;box-shadow:none!important}*{box-sizing:border-box}
       
        .auto-style1 {
            width: 100%;
        }
        table{border-collapse:collapse}tr{page-break-inside:avoid}
        .auto-style2 {
            width: 254px;
        }
        a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}
        .auto-style3 {
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Please login to continue...</h1>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Please enter the Username:</td>
                    <td style="width: 232px">
                        <asp:TextBox ID="txtUsername" runat="server" Width="284px">John</asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="* Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Please enter the Password:</td>
                    <td style="width: 232px">
                        <asp:TextBox ID="txtPassword" runat="server" PasswordChar="*" Width="284px">John123</asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2" style="height: 30px"><a href="http://localhost:58669/RegisterUser.aspx">Don&#39;t have an account? Register</a> </td>
                    <td class="auto-style3" style="width: 232px; height: 30px;">
                        <asp:Button ID="btnLogin" runat="server" Font-Bold="False" ForeColor="Blue" OnClick="btnLogin_Click" Text="Login" Width="135px" />
                    </td>
                    <td style="height: 30px"></td>
                </tr>
                <tr>
                    <td class="auto-style2"><a href="http://localhost:58669/CustomerForgetPassword.aspx">Forgot Password</a></td>
                    <td class="auto-style3" style="width: 232px">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#660066"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
