<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MidTermTest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
        .auto-style6 {
            width: 169px;
        }
        /*#tableHeading
        {
            text-align:center;
        }*/
        .auto-style7 {
            width: 257px;
        }

        .validator{
            text-align:right;
        }

        .tableStyle{
            align-content:center;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <table class="tableStyle">
    <tr>
         <td id="tableHeading" colspan="3" style="color: #008000; font-weight: bold; font-size: large">User Registration</td> 
    </tr>
    <tr>
        <td class="auto-style6">User ID:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtUserId" runat="server" Width="252px"></asp:TextBox>
        </td>
        <td>
           <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="txtUserId" ErrorMessage="* Please Enter User Id" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Name:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtName" runat="server" Width="252px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="txtName" ErrorMessage="* Please Enter your Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Password:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtPassword" runat="server" Width="252px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="txtPassword" ErrorMessage="* Please Enter your Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Confirm Password:</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtConfirmPassword" runat="server" Width="252px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="* Please Enter Confirm Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Select Your Country:</td>
        <td class="auto-style7">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="countryName" DataValueField="countryName" Height="42px" Width="255px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMidTermConnectionString %>" SelectCommand="SELECT DISTINCT [countryName] FROM [tblCountries]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="DropDownList1" ErrorMessage="* Select Your Country" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">Email Address</td>
        <td class="auto-style7">
            <asp:TextBox ID="txtEmailId" runat="server" Width="252px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator class="validator" runat="server" ControlToValidate="txtEmailId" ErrorMessage="* Enter Your Email" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            <asp:Button ID="btnSave" runat="server" Text="Save" Width="253px" OnClick="btnSave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6">&nbsp;</td>
        <td class="auto-style7">
            <asp:Label ID="txtMessage" runat="server" Text="txtMessage" Visible="False" ForeColor="Red"></asp:Label>
        </td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtConfirmPassword" ControlToValidate="txtPassword" ErrorMessage="The Passwords don't match" ForeColor="#660066"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="103px" Width="727px" />
        </td>
    </tr>
</table>
       
</asp:Content>
