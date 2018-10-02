<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductShowList.aspx.cs" Inherits="ListViewDemo.ProductShowList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="productID" DataSourceID="SqlDataSource1" GroupItemCount="3" >
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FAFAD2;color: #284775;">
                         <table>
                            <tr><td>     <asp:Label ID="productNameLabel" runat="server" Text='<%# Eval("productName") %>' />
                      </td></tr>
                          <tr><td>
                                <a href='ProductDetail.aspx?productId=<%# Eval("productID") %>'> <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("productImage") %>'/></a>
                                </td></tr>
                            <tr> <td> <asp:Label ID="productPriceLabel" runat="server" Text='<%# Eval("productPrice") %>' />
                       </td></tr>
                        </table></td>
                </AlternatingItemTemplate>
               
              
                <GroupTemplate>
                    <tr id="itemPlaceholderContainer" runat="server">
                        <td id="itemPlaceholder" runat="server"></td>
                    </tr>
                </GroupTemplate>
              
                <ItemTemplate>
                    <td runat="server" >
                        <table>
                            <tr><td>     <asp:Label ID="productNameLabel0" runat="server" Text='<%# Eval("productName") %>' />
                      </td></tr>
                            
                     
                            <tr><td>
                                <a href='ProductDetail.aspx?productId=<%# Eval("productID") %>'> <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productImage") %>'/></a>
                                </td></tr>
                            <tr> <td> <asp:Label ID="productPriceLabel0" runat="server" Text='<%# Eval("productPrice") %>' />
                       </td></tr>
                        </table>
                       </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr id="groupPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
           
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT [productID], [productName], [productImage], [productPrice] FROM [tblProducts] WHERE (([productCategory] = @productCategory) AND ([productName] = @productName))">
                <SelectParameters>
                    <asp:QueryStringParameter Name="productCategory" QueryStringField="productCategory" Type="String" />
                    <asp:QueryStringParameter Name="productName" QueryStringField="productName" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT [productName], [productImage], [productPrice], [productID] FROM [tblProducts] WHERE ([productCategory] = @productCategory)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="productCategory" QueryStringField="productCategory" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
