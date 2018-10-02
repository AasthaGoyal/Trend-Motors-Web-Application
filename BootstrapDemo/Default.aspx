<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BootstrapDemo.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<div id="wrap">
	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">A Car For Everyone!!!</h1>

	<%--<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="StyleSheets/DefaultStylesheet.css" rel="stylesheet" />--%>
	<link href="StyleSheets/WrapContents.css" rel="stylesheet" />
	<div class="slideshow-container">

<div class="mySlides fade" >
  <div class="numbertext"> </div>
  <img src="resources/carr1.jpg" style="width:100%; max-height:30%">
  
</div>

<div class="mySlides fade" >
  <div class="numbertext"></div>
  <img src="resources/t2.jpg" style="width:100%; max-height:50%">

</div>

<div class="mySlides fade">
  <div class="numbertext"></div>
  <img src="resources/we3.jpg" style="width:100%; max-height:50%">

</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
	<br />
	<div class="container">

	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Specials of this Month:</h1>
	<br />
		 <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource2" RepeatColumns="6">
		<ItemTemplate>
			<table class="auto-style1">
				<tr>
					<td class="auto-style18">
						 <a href='CarDetail.aspx?carId=<%# Eval("carId") %>'> <asp:Image ID="Image3" runat="server" Height="228px" ImageUrl='<%# Eval("carImage1") %>' Width="306px" /></a>
					</td>
				</tr>
				<tr>
					<td class="auto-style18">
						<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("model") %>'></asp:Label>
						&nbsp;
						<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
						&nbsp;
						<asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
					</td>
				</tr>
				<tr>
					<td class="auto-style19">
						<asp:Image ID="Image4" runat="server" Height="29px" Width="42px" src="resources/star.jpg"/>
						<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>' BackColor="#FFCC00"></asp:Label>
						<asp:Image ID="Image5" runat="server" Height="29px" Width="42px" src="resources/star.jpg"/>
					</td>
				</tr>
			
			</table>
			<br />
			<br />
		</ItemTemplate>
	</asp:DataList>
	<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [model], [make], [carYear], [price] FROM [tblCars] WHERE ([promotion] = @promotion)">
		<SelectParameters>
			<asp:Parameter DefaultValue="Yes" Name="promotion" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>
	<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [model], [carYear], [make], [price], [carQuantity] FROM [tblCars] WHERE ([promotion] = @promotion)">
		<SelectParameters>
			<asp:Parameter DefaultValue="Yes" Name="promotion" Type="String" />
		</SelectParameters>
	</asp:SqlDataSource>
	</div>

	</div>
<script>
var slideIndex = 0;
showSlides();

function showSlides() {
	var i;
	var slides = document.getElementsByClassName("mySlides");
	var dots = document.getElementsByClassName("dot");
	for (i = 0; i < slides.length; i++) {
	   slides[i].style.display = "none";  
	}
	slideIndex++;
	if (slideIndex > slides.length) {slideIndex = 1}    
	for (i = 0; i < dots.length; i++) {
		dots[i].className = dots[i].className.replace(" active", "");
	}
	slides[slideIndex-1].style.display = "block";  
	dots[slideIndex-1].className += " active";
	setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
	
</asp:Content>
