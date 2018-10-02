<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="SellCar.aspx.cs" Inherits="TrendMotors2.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style21 {
        width: 285px;
    }
    .auto-style22 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add a Sold Car (Make sure you know carId of the car):</h2>
<table style="width: 100%">
    <tr>
        <td class="auto-style21">Car Id:</td>
        <td style="width: 258px">
            <asp:TextBox ID="txtCarId" runat="server" Width="315px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarId" ErrorMessage="*Car ID required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">Price sold for:</td>
        <td style="width: 258px">
            <asp:TextBox ID="txtPriceSold" runat="server" Width="315px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPriceSold" ErrorMessage="*The final selling price  is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">Customer Name:</td>
        <td style="width: 258px">
            <asp:TextBox ID="txtCustName" runat="server" Width="315px"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCustName" ErrorMessage="*Customer Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style21">Customer Contact No:</td>
        <td style="width: 258px">
            <asp:TextBox ID="txtCustContactNo" runat="server" Width="315px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">Customer Address:</td>
        <td style="width: 258px">
            <asp:TextBox ID="txtAddress" runat="server" Width="315px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style22" style="width: 258px">
            <asp:Button ID="btnConfirm" runat="server" Height="28px" OnClick="btnConfirm_Click" Text="Confirm" Width="256px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style21">&nbsp;</td>
        <td class="auto-style22" style="width: 258px">
            <asp:Label ID="Label1" runat="server" ForeColor="#660066" Text="lblMessage" Visible="False"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
