<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MidTermTest.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
         
           
        }
        .auto-style6 {
            width: 191px;
        }
        .auto-style7 {
            width: 191px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            width: 250px;
        }
        .auto-style9 {
            width: 287px;
        }
        .auto-style10 {
            height: 23px;
            width: 287px;
        }
        #heading
        {
            text-align:center;
        }
        .auto-style11 {
            table-layout: auto;
            width: 250px;
        }
        .auto-style12 {
            width: 250px;
        }
        .auto-style13 {
            table-layout: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
      
        <tr>
            <td class="auto-style13" colspan="3" style="color: #008000; font-weight: bold; font-size: large; display: inline;">User Login</td>
        </tr>
        <tr>
            <td class="auto-style6" style="table-layout: auto">User ID:</td>
            <td class="auto-style9" style="table-layout: auto">
                <asp:TextBox ID="txtUserId" runat="server" Width="276px"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserId" ErrorMessage="* Enter the User Id" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Password:</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtPassword" runat="server" Width="276px" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style8">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Enter the Password" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">
                <asp:Button ID="btnLogin" runat="server" Text="Login" Width="280px" OnClick="btnLogin_Click" />
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td class="auto-style9">
                <asp:Label ID="txtErrorMessage" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="txtPasswordError" runat="server" ForeColor="#660066" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
