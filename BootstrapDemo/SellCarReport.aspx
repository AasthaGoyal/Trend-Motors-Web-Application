<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="SellCarReport.aspx.cs" Inherits="BootstrapDemo.WebForm7" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
		<link href="StyleSheets/WrapContents.css" rel="stylesheet" />
	<div class="container" id="wrap">
	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000"> Sold Car Report:</h1>
	
		<hr >
		<br />
   

		  <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1">
			  <ItemTemplate>
				  <div style="text-align: left">
					  Car Id:
					  <asp:Label ID="carIdLabel" runat="server" Text='<%# Eval("carId") %>' />
					  <br />
					  &nbsp;<asp:Image ID="Image6" runat="server" Height="125px" ImageUrl='<%# Eval("carImage1") %>' Width="148px" />
					  <br />
					  &nbsp;<asp:Label ID="modelLabel" runat="server" Text='<%# Eval("model") %>' />
					  &nbsp;<asp:Label ID="makeLabel" runat="server" Text='<%# Eval("make") %>' />
					  <asp:Label ID="carYearLabel" runat="server" Text='<%# Eval("carYear") %>' />
					  :
					  <asp:Label ID="carDescriptionLabel" runat="server" Text='<%# Eval("carDescription") %>' />
					  <br />
					  Kilometers:
					  <asp:Label ID="kmsLabel" runat="server" Text='<%# Eval("kms") %>' />
					  <br />
					  Engine Size:
					  <asp:Label ID="engineSizeLabel" runat="server" Text='<%# Eval("engineSize") %>' />
					  <br />
					  Fuel:
					  <asp:Label ID="fuelLabel" runat="server" Text='<%# Eval("fuel") %>' />
					  <br />
					  Seats:
					  <asp:Label ID="seatsLabel" runat="server" Text='<%# Eval("seats") %>' />
					  <br />
					  Price:
					  <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
					  <br />
					  Quantity:
					  <asp:Label ID="carQuantityLabel" runat="server" Text='<%# Eval("carQuantity") %>' />
					  <br />
					  Cost Price:
					  <asp:Label ID="buyingPriceLabel" runat="server" Text='<%# Eval("buyingPrice") %>' />
					  <br />
					  Promotion:
					  <asp:Label ID="promotionLabel" runat="server" Text='<%# Eval("promotion") %>' />
					  <br />
					  Selling Price:
					  <asp:Label ID="sellingPriceLabel" runat="server" Text='<%# Eval("sellingPrice") %>' />
					  <br />
					  Customer name:
					  <asp:Label ID="custnameLabel" runat="server" Text='<%# Eval("custname") %>' />
					  <br />
					  Phone No:
					  <asp:Label ID="phoneNoLabel" runat="server" Text='<%# Eval("phoneNo") %>' />
					  <br />
					  Customer Address:
					  <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
					  <br />
					  <br />
				  </div>
			  </ItemTemplate>
		</asp:DataList>
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="soldCars" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
   

		  </div>
</asp:Content>
