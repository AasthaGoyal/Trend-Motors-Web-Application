<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="McdonaldDatabaseDemo1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
             <td colspan="3">Register User</td> 
            
        </tr>
        <tr>
            <td style="height: 23px; width: 213px">Enter your first name:</td>
            <td style="height: 23px; width: 627px;">
                <asp:TextBox ID="txtFirstname" runat="server" Width="391px"></asp:TextBox>
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="height: 23px; width: 213px">Enter the user ID:</td>
            <td style="height: 23px; width: 627px;">
                <asp:TextBox ID="txtUserId" runat="server" Width="391px"></asp:TextBox>
            </td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 213px">Enter your password:</td>
            <td style="height: 23px; width: 627px;">
                <asp:TextBox ID="txtPassword" runat="server" Width="391px"></asp:TextBox>
            </td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 213px">Confirm password:</td>
            <td style="height: 23px; width: 627px;">
                <asp:TextBox ID="txtConfirmPassword" runat="server" Width="391px"></asp:TextBox>
            </td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 213px">
                <asp:Button ID="btnRegister" runat="server" Text="Register" Width="212px" OnClick="btnRegister_Click" />
            </td>
            <td style="height: 23px; width: 627px;">&nbsp;</td>
            <td style="height: 23px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
