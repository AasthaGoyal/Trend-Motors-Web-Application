<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="ListViewDemo.ProductList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


   

    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Here is ListView<br />
            <br />
            Search by :&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="26px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="165px" AutoPostBack="True">
                <asp:ListItem Selected="True">Category</asp:ListItem>
                <asp:ListItem>Name</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMcdonaldConnectionString %>" SelectCommand="SELECT DISTINCT [productCategory] FROM [tblProducts]"></asp:SqlDataSource>
            <asp:DropDownList ID="dpCategory" runat="server" DataSourceID="SqlDataSource2" DataTextField="productCategory" DataValueField="productCategory" Visible="False" Width="161px" AutoPostBack="True">
            </asp:DropDownList>
            <asp:TextBox ID="txtName" runat="server" Visible="False" Width="197px"></asp:TextBox>
            <br />
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" Width="139px" AutoPostBack="true"/>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
