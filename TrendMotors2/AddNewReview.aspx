<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddNewReview.aspx.cs" Inherits="TrendMotors2.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        width: 100%;
    }
    .auto-style10 {
        width: 710px;
    }
    .auto-style11 {
        width: 705px;
    }
    .auto-style12 {
        width: 695px;
    }
    .auto-style13 {
        width: 688px;
    }
    .auto-style14 {
        width: 680px;
    }
    .auto-style15 {
        width: 252px;
    }
    .auto-style16 {
        width: 558px;
    }
    .auto-style17 {
        width: 554px;
    }
    .auto-style18 {
        width: 550px;
    }
    .auto-style19 {
        width: 353px;
    }
    .auto-style20 {
        width: 353px;
        text-align: right;
    }
        .auto-style23 {
            width: 242px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1> Add a new Customer Review</h1>
<table class="auto-style9">
    <tr>
        <td class="auto-style23">Customer Name:</td>
        <td class="auto-style19">
            <asp:TextBox ID="txtName" runat="server" Width="346px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="* Customer Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Image:</td>
        <td class="auto-style19">
            <asp:FileUpload ID="fpImage" runat="server" Width="350px" />
        </td>
       
    </tr>
    <tr>
        <td class="auto-style23">Review:</td>
        <td class="auto-style19">
            <asp:TextBox ID="txtReview" runat="server" Width="346px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtReview" ErrorMessage="* Customer Review Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">Stars</td>
        <td class="auto-style19">
            <asp:TextBox ID="txtStars" runat="server" Width="346px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtStars" ErrorMessage="* Stars rated Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style20">
            <asp:Button ID="btnAddReview" runat="server" OnClick="btnAddReview_Click" Text="Add Review" Width="147px" />
        </td>
        <td>
            <asp:Label ID="lblMessage" runat="server" ForeColor="#660066" Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style23">&nbsp;</td>
        <td class="auto-style19">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
