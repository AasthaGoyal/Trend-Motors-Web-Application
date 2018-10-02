<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridView.aspx.cs" Inherits="GridViewDemo.GridViewDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>

    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Welcome to Gridview Demo<br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" Height="181px" PageSize="2" Width="570px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <PagerSettings FirstPageText="Previous" LastPageText="Next" Mode="NextPreviousFirstLast" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" DeleteCommand="DELETE FROM [tblProducts] WHERE [productID] = @productID" InsertCommand="INSERT INTO [tblProducts] ([productID], [productName], [productDescription], [productImage], [productPrice], [productCategory]) VALUES (@productID, @productName, @productDescription, @productImage, @productPrice, @productCategory)" SelectCommand="SELECT * FROM [tblProducts]" UpdateCommand="UPDATE [tblProducts] SET [productName] = @productName, [productDescription] = @productDescription, [productImage] = @productImage, [productPrice] = @productPrice, [productCategory] = @productCategory WHERE [productID] = @productID">
                <DeleteParameters>
                    <asp:Parameter Name="productID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="productID" Type="Int32" />
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDescription" Type="String" />
                    <asp:Parameter Name="productImage" Type="String" />
                    <asp:Parameter Name="productPrice" Type="Int32" />
                    <asp:Parameter Name="productCategory" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="productName" Type="String" />
                    <asp:Parameter Name="productDescription" Type="String" />
                    <asp:Parameter Name="productImage" Type="String" />
                    <asp:Parameter Name="productPrice" Type="Int32" />
                    <asp:Parameter Name="productCategory" Type="String" />
                    <asp:Parameter Name="productID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
