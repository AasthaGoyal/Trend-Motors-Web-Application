<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="ShoppingCartApplication.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 4: Shopping Cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1" /> <link href="Content/bootstrap.min.css" rel="stylesheet" /> <link href="Content/site.css" rel="stylesheet" /> <script src="Scripts/jquery-1.9.1.min.js"></script> <script src="Scripts/bootstrap.min.js"></script>



</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
<header class="jumbotron"><%--image set in site.css --%></header>  <div class="row"><%--row 1 --%> </div> 
<div class="col-sm-8"><%--product drop down and info column --%> </div><div class="form-group">
<label class="col-sm-5">Please select a product:</label> <div class="col-sm-6">
<asp:DropDownList ID="ddlProducts" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ProductId" CssClass="form-control" OnSelectedIndexChanged="ddlProducts_SelectedIndexChanged"></asp:DropDownList> 
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
                       <asp:ControlParameter ControlID="ddlProducts" Name="name" PropertyName="SelectedValue" Type="String" />
                   </SelectParameters>
               </asp:SqlDataSource>
</div> </div>
  
   
   
</div>
        <%--end of row 1 --%>

 <div class="row"><%--row 2 --%> <div class="col-sm-12"> <div class="form-group">
<label class="col-sm-1">Quantity:</label> <div class="col-sm-3">
<asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox></div>
<div class="col-sm-8">
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity is a required field."> </asp:RequiredFieldValidator>
    <br />
<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" Display="Dynamic" ErrorMessage="Quantity must range from 1 to 500." MaximumValue="500" MinimumValue="1" Type="Integer"> </asp:RangeValidator></div>
</div>
<div class="form-group"> <div class="col-sm-12">
<asp:Button ID="btnAdd" runat="server" Text="Add to Cart" OnClick="btnAdd_Click" CssClass="btn" /> <asp:Button ID="btnCart" runat="server" Text="Go to Cart" PostBackUrl="~/Cart.aspx" CausesValidation="False" CssClass="btn" OnClick="btnCart_Click" /></div>
</div> </div>
</div>
</form>
    
</body>
</html>
