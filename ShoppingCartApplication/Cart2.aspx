<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart2.aspx.cs" Inherits="ShoppingCartApplication.Cart2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Select a product:<br />
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" Height="30px" Width="161px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT DISTINCT [name] FROM [tblProduct]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productId" DataSourceID="SqlDataSource2">
                <ItemTemplate>
                    productId:
                    <asp:Label ID="productIdLabel" runat="server" Text='<%# Eval("productId") %>' />
                    <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    <br />
                    shortDescription:
                    <asp:Label ID="shortDescriptionLabel" runat="server" Text='<%# Eval("shortDescription") %>' />
<br />
                    longDescription:
                    <asp:Label ID="longDescriptionLabel" runat="server" Text='<%# Eval("longDescription") %>' />
                    <br />
                    unitPrice:
                    <asp:Label ID="unitPriceLabel" runat="server" Text='<%# Eval("unitPrice") %>' />
                    <br />
                    imageFile:
                    <asp:Label ID="imageFileLabel" runat="server" Text='<%# Eval("imageFile") %>' />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT * FROM [tblProduct] WHERE ([name] = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="name" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            Enter the quantity :
            <asp:TextBox ID="txtQuantity" runat="server" Width="179px"></asp:TextBox>
            <br />
<asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="btnAdd_Click" CssClass="btn" /> <asp:Button ID="btnCart" runat="server" Text="Go to Cart" PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn" />
        </div>
    </form>
</body>
</html>
