<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="MockExamMidterm.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    The total amout of the products is
</p>
<p>
    <asp:TextBox ID="txtAmount" runat="server" OnTextChanged="txtAmount_TextChanged" Width="361px"></asp:TextBox>
</p>
</asp:Content>
