<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerRegister.aspx.cs" Inherits="ListViewDemo.CustomerRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
h1{font-size:2.5rem}h1{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}h1{margin-top:0;margin-bottom:.5rem}*{text-shadow:none!important;box-shadow:none!important}*{box-sizing:border-box}h2{page-break-after:avoid}h2{orphans:3;widows:3}h2{font-size:2rem}h2{margin-bottom:.5rem;font-family:inherit;font-weight:500;line-height:1.2;color:inherit}h2{margin-top:0;margin-bottom:.5rem}
       
        .auto-style1 {
            width: 100%;
        }
        table{border-collapse:collapse}tr{page-break-inside:avoid}
        .auto-style2 {
            width: 254px;
        }
        a{color:#007bff;text-decoration:none;background-color:transparent;-webkit-text-decoration-skip:objects}</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="color: #000080; font-weight: bold; font-family: Cambria; text-align: center;">Welcome to Trend Motors</h1>
            <h2 style="text-align: center">Please Register or Login to continue</h2>
            <table class="auto-style1" style="font-size: large">
                <tr>
                    <td class="auto-style22">Your Name:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtName" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="* Name Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Contact Number:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtContactNo" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*Contact Number Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Address:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtAddress" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Username(Email Id):</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtUsername" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Username Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Password:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtPassword" runat="server" PasswordChar="*" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:TextBox ID="txthash" runat="server" Visible="False" Width="245px"></asp:TextBox>
                    </td>
                    <td style="width: 256px; height: 23px">
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnAddStaff_Click" Text="Register" ValidationGroup="staff" Width="253px" />
                    </td>
                    <td class="auto-style2" style="text-align: center"><a href="http://localhost:58669/CustomerLogin.aspx">Login</a></td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style21" style="width: 256px; height: 23px">
                        <asp:Label ID="txtMessage" runat="server" ForeColor="#660066" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
