<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShowAllOrders.aspx.cs" Inherits="MockExamMidterm.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   

<style type="text/css">
    #GridView1
    {
        border:solid double 20px;
        border-color:blue;
    }
</style>
   </asp:Content>
  
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="productCategory" DataValueField="productCategory" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="618px" AutoPostBack="True">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=aago001;Initial Catalog=dbMockExam;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [productCategory] FROM [tblProducts]"></asp:SqlDataSource>
<br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoPostBack="true" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="159px" Width="625px">
        <Columns>
            <asp:BoundField  DataField="productName" HeaderText="productName" SortExpression="productName" />
            <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
            <asp:BoundField DataField="productCategory" HeaderText="productCategory" SortExpression="productCategory" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=aago001;Initial Catalog=dbMockExam;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblProducts] WHERE ([productCategory] = @productCategory)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" DefaultValue="" Name="productCategory" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
</asp:Content>
