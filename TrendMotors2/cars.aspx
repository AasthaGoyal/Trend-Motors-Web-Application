<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cars.aspx.cs" Inherits="TrendMotors2.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="dpModel" runat="server" DataSourceID="SqlDataSource2" DataTextField="model" DataValueField="model" Height="27px" Width="171px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT DISTINCT [model] FROM [tblCars]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="dpMake" runat="server" DataSourceID="SqlDataSource2" DataTextField="make" DataValueField="make" Height="27px" Width="171px">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT DISTINCT [make] FROM [tblCars]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" Width="114px" />
&nbsp;
    <br />
    <br />
&nbsp;
</asp:Content>
