<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPasswordPage.aspx.cs" Inherits="ListViewDemo.ResetPasswordPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
h1{font-size:2.5rem}h1{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}h1{margin-top:0;margin-bottom:.5rem}*{text-shadow:none!important;box-shadow:none!important}*{box-sizing:border-box}p{orphans:3;widows:3}p{margin-top:0;margin-bottom:1rem}
       
        .auto-style1 {
            width: 100%;
        }
        table{border-collapse:collapse}tr{page-break-inside:avoid}
        .auto-style3 {
            text-align: right;
        }
        a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Reset Password:</h1>
            <p>
                Please enter your registered email id and new password:</p>
            <table class="auto-style1">
                <tr>
                    <td style="width: 256px">Email Id:</td>
                    <td style="width: 281px">
                        <asp:TextBox ID="txtUsername" runat="server" Width="293px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="* Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 256px; height: 26px">Password:</td>
                    <td style="width: 281px; height: 26px">
                        <asp:TextBox ID="txtPassword" runat="server" PasswordChar="*" Width="293px"></asp:TextBox>
                    </td>
                    <td style="height: 26px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password  is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 256px">Confirm Password:</td>
                    <td style="width: 281px">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" PasswordChar="*" Width="293px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="* The Passwords do not match!" Font-Bold="True" ForeColor="#660066"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 256px">&nbsp;</td>
                    <td class="auto-style3" style="width: 281px">
                        <asp:Button ID="btnConfirm" runat="server" OnClick="btnConfirm_Click" Text="Confirm" Width="136px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 256px; height: 23px;"></td>
                    <td class="auto-style3" style="width: 281px; height: 23px;">
                        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#FF6600"></asp:Label>
                    </td>
                    <td style="height: 23px; text-align: center"><a href="http://localhost:58669/StaffLogin.aspx">Login to Continue</a></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
