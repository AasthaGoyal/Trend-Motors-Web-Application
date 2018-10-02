<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DisplayProducts.aspx.cs" Inherits="McdonaldDatabaseDemo1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=aago001;Initial Catalog=dbMcdonald;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT DISTINCT [productCategory] FROM [tblProducts]">
    </asp:SqlDataSource>
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="productCategory" DataValueField="productCategory" Height="28px" Width="314px" AutoPostBack="true">
    </asp:DropDownList>
    <br />
    <br />
    <asp:Button ID="btnSearch" runat="server" OnClick="TextBox1_TextChanged" Text="Search" />
    <br />
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="productID" DataSourceID="SqlDataSource2" Width="406px">
        <Columns>
            <asp:BoundField DataField="productID" HeaderText="productID" ReadOnly="True" SortExpression="productID" />
            <asp:BoundField DataField="productName" HeaderText="productName" SortExpression="productName" />
            <asp:BoundField DataField="productDescription" HeaderText="productDescription" SortExpression="productDescription" />
            <asp:BoundField DataField="productImage" HeaderText="productImage" SortExpression="productImage" />
            <asp:BoundField DataField="productPrice" HeaderText="productPrice" SortExpression="productPrice" />
            <asp:BoundField DataField="productCategory" HeaderText="productCategory" SortExpression="productCategory" />
        </Columns>
    </asp:GridView>
    <br />
    Quantity:
    <asp:TextBox ID="txtQuantity" runat="server" Width="135px"></asp:TextBox>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=aago001;Initial Catalog=dbMcdonald;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblProducts] WHERE ([productCategory] = @productCategory)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="productCategory" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Button ID="btnAddToCart" runat="server" Text="Add To Cart" />
    <br />
</asp:Content>
