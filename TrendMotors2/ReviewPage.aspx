<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ReviewPage.aspx.cs" Inherits="TrendMotors2.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center" style="color: #000080; font-family: 'Comic Sans MS'; font-size: x-large;"><.. Reviews ..></h1>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" Text='<%# Eval("custName") %>'></asp:Label>
            &nbsp;<b> reviewed Trend Motors<br /></b>
            <asp:Image ID="Image7" runat="server" Height="230px" ImageUrl='<%# Eval("custImage") %>' Width="399px" />
            <br /><b> Stars:</b>
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" Text='<%# Eval("stars") %>'></asp:Label>
            <asp:Image ID="Image6" runat="server" src="resources/star.jpg" Height="16px" Width="22px" />
            <br />
            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#000066" Text='<%# Eval("review") %>'></asp:Label>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT * FROM [tblReviews]"></asp:SqlDataSource>
</asp:Content>
