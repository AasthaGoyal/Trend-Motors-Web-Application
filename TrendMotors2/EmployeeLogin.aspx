<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeLogin.aspx.cs" Inherits="TrendMotors2.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">

        .auto-style25 {
            margin-left: 80px;
        }
        .auto-style25 {
            width: 100%;
        }
        .auto-style28 {
        height: 23px;
    }
    .auto-style27 {
        width: 266px;
        height: 23px;
        text-align: left;
    }
    .auto-style29 {
        width: 269px;
        height: 23px;
            text-align: center;
        }
        .auto-style26 {
            margin-left: 704px;
        }
        .auto-style26 {
        width: 266px;
    }
    .auto-style30 {
        width: 269px;
            text-align: center;
        }
        .auto-style32 {
            height: 24px;
            text-align: center;
        }
    .auto-style33 {
        width: 269px;
        text-align: right;
    }
    </style>

    <table class="auto-style25">
        <tr>
            <td class="auto-style28" colspan="3"><b> Please login with Username and Password:</b></td>
        </tr>
        <tr>
            <td class="auto-style27">Enter the Username:</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtUsername" runat="server" OnTextChanged="txtUsername_TextChanged" Width="253px"></asp:TextBox>
            </td>
            <td class="auto-style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername" ErrorMessage="* Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">Enter the password:</td>
            <td class="auto-style30">
                <asp:TextBox ID="txtPassword" runat="server" Width="253px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style33">
                <asp:Button ID="btnLogin" runat="server" CssClass="auto-style31" OnClick="btnLogin_Click" Text="Login" Width="169px" Font-Bold="True" Font-Size="Medium" Height="28px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td id="lblName" class="auto-style32" colspan="3">
                <asp:Label ID="txtError" runat="server" ForeColor="#660066" Text="Label" Visible="False"></asp:Label>
              
              

            </td>
        </tr>
    </table>
</asp:Content>
