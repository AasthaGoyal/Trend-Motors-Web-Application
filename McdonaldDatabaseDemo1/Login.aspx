<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="McdonaldDatabaseDemo1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td style="width: 328px">Login Register</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 328px">Enter the User ID: </td>
            <td>
                <asp:TextBox ID="txtUserId" runat="server" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 328px; height: 26px">Enter the Password:</td>
            <td style="height: 26px">
                <asp:TextBox ID="txtPassword" runat="server" Width="333px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 328px">
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Login" Width="290px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
