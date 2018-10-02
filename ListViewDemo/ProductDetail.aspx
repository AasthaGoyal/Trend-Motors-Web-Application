<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="ListViewDemo.ProductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="productID" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    productID:
                    <asp:Label ID="productIDLabel1" runat="server" Text='<%# Eval("productID") %>' />
                    <br />
                    productName:
                    <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                    <br />
                    productDescription:
                    <asp:TextBox ID="productDescriptionTextBox" runat="server" Text='<%# Bind("productDescription") %>' />
                    <br />
                    productImage:
                    <asp:TextBox ID="productImageTextBox" runat="server" Text='<%# Bind("productImage") %>' />
                    <br />
                    productPrice:
                    <asp:TextBox ID="productPriceTextBox" runat="server" Text='<%# Bind("productPrice") %>' />
                    <br />
                    productCategory:
                    <asp:TextBox ID="productCategoryTextBox" runat="server" Text='<%# Bind("productCategory") %>' />
                    <br />
                    productQuantity:
                    <asp:TextBox ID="productQuantityTextBox" runat="server" Text='<%# Bind("productQuantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    productID:
                    <asp:TextBox ID="productIDTextBox" runat="server" Text='<%# Bind("productID") %>' />
                    <br />
                    productName:
                    <asp:TextBox ID="productNameTextBox" runat="server" Text='<%# Bind("productName") %>' />
                    <br />
                    productDescription:
                    <asp:TextBox ID="productDescriptionTextBox" runat="server" Text='<%# Bind("productDescription") %>' />
                    <br />
                    productImage:
                    <asp:TextBox ID="productImageTextBox" runat="server" Text='<%# Bind("productImage") %>' />
                    <br />
                    productPrice:
                    <asp:TextBox ID="productPriceTextBox" runat="server" Text='<%# Bind("productPrice") %>' />
                    <br />
                    productCategory:
                    <asp:TextBox ID="productCategoryTextBox" runat="server" Text='<%# Bind("productCategory") %>' />
                    <br />
                    productQuantity:
                    <asp:TextBox ID="productQuantityTextBox" runat="server" Text='<%# Bind("productQuantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    productID:
                    <asp:Label ID="productIDLabel" runat="server" Text='<%# Eval("productID") %>'></asp:Label>
                    <br />

                    productName:

                    <asp:Label ID="productNameLabel" runat="server" Text='<%# Bind("productName") %>'></asp:Label>
                    <br />
                    productDescription:
                    <asp:Label ID="productDescriptionLabel" runat="server" Text='<%# Bind("productDescription") %>'></asp:Label>
                    <br />
                    productImage:
                    <asp:Label ID="productImageLabel" runat="server" Text='<%# Bind("productImage") %>' />
                    <br />
                    productPrice:
                    <asp:Label ID="productPriceLabel" runat="server" Text='<%# Bind("productPrice") %>'></asp:Label>
                    <br />
                    productCategory:
                    <asp:Label ID="productCategoryLabel" runat="server" Text='<%# Bind("productCategory") %>'></asp:Label>

                    <br />
                    productQuantity:
                    <asp:Label ID="productQuantityLabel" runat="server" Text='<%# Bind("productQuantity") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT * FROM [tblProducts] WHERE ([productID] = @productID)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="productID" QueryStringField="productId" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            Quantity:
            <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox>
            <asp:Button ID="btnAddToCart" runat="server" OnClick="btnAddToCart_Click" Text="Add To Cart" Height="27px" Width="133px" />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnViewcart" runat="server" OnClick="btnViewcart_Click" Text="View cart" Width="165px" />
            <br />
            <asp:Button ID="btnDeleteCart" runat="server" OnClick="btnViewcart_Click" Text="Delete cart" Width="165px" />
            <br />
            <br />
            <asp:DataList ID="d1" runat="server">
                <HeaderTemplate>
                    <table>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td> <%#Eval("productImage")%>" </td>
                                <td><%#Eval("productName") %></td>
                                 <td><%#Eval("productDescription") %></td>
                                 <td><%#Eval("productPrice") %></td>
                                 <td><%#Eval("productCategory") %></td>
                                 

                                </tr>
                        </ItemTemplate>
                <FooterTemplate>
                     </table>
                </FooterTemplate>
                   

            </asp:DataList>
        </div>
    </form>
</body>
</html>
