<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddNewStaff.aspx.cs" Inherits="TrendMotors2.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        text-align: left;
    }
        .auto-style22 {
            width: 316px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="height: 198px">
    <tr>
        <td colspan="3">
            <h1 style="color: #008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Add Staff</h1>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;First Name:</td>
        <td style="width: 256px; height: 23px">
            <asp:TextBox ID="txtFirstName" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*First Name Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">Last Name:</td>
        <td style="width: 256px; height: 23px">
            <asp:TextBox ID="txtLastName" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Last Name Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
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
        <td class="auto-style22">Position:</td>
        <td style="width: 256px; height: 23px">
            <asp:TextBox ID="txtPosition" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPosition" ErrorMessage="*Position Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">Email Address:</td>
        <td style="width: 256px; height: 23px">
            <asp:TextBox ID="txtEmailId" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">Username:</td>
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
            <asp:TextBox ID="txtPassword" runat="server" Width="245px"></asp:TextBox>
        </td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td style="width: 256px; height: 23px">
            <asp:Button ID="btnAddStaff" runat="server" OnClick="btnAddStaff_Click" Text="Add Staff" ValidationGroup="staff" Width="253px" />
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style22">&nbsp;</td>
        <td class="auto-style21" style="width: 256px; height: 23px">
            <asp:Label ID="txtMessage" runat="server" ForeColor="#660066" Text="Label" Visible="False"></asp:Label>
        </td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
</table>
</asp:Content>
