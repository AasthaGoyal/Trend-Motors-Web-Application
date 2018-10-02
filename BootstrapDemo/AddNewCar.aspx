<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="AddNewCar.aspx.cs" Inherits="BootstrapDemo.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

		<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="StyleSheets/AddCar.css" rel="stylesheet" />
	<div class="container" id="wrap">

   
	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Add New Car</h1>
	<p> Please enter the details to add a new vehicle for sale</p>
	<hr >

	<label  > <b>  Make:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtModel"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Model" id="txtModel" />

		<label > <b>  Model:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtMake"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Make" id="txtMake" />
	
	
		<label > <b>  Year:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtYear"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Year" id="txtYear" />

		<label> <b>  Image 1:</b></label>
		<asp:FileUpload ID="Image1" runat="server" Width="370px" />
 
		 <label> <b>  Image 2:</b></label>
		<asp:FileUpload ID="Image2" runat="server" Width="370px" />
 
		 <label> <b>  Image 3:</b></label>
		<asp:FileUpload ID="Image3" runat="server" Width="370px" />
 
		 <label> <b>  Image 4:</b></label>
		<asp:FileUpload ID="Image4" runat="server" Width="370px" />
 
		 <label> <b>  Image 5:</b></label>
		<asp:FileUpload ID="Image5" runat="server" Width="370px" />
 
		 <label> <b>  Image 6:</b></label>
		<asp:FileUpload ID="Image6" runat="server" Width="370px" />
 
		 <label> <b>  Image 7:</b></label>
		<asp:FileUpload ID="Image7" runat="server" Width="370px" />
 
		 <label> <b>  Image 8:</b></label>
		<asp:FileUpload ID="Image8" runat="server" Width="370px" />
 
		<label > <b>  Engine Size:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtEngineSize"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Engine Size" id="txtEngineSize" />

		<label > <b>  Fuel:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtFuel"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Fuel" id="txtFuel" />

		<label > <b>  Seats:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtSeats"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Seats" id="txtSeats" />


		<label > <b>  Description:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtDescription"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Description" id="txtDescription" Height="143px" />

		 <label > <b>  Kilometers:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtKms"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Kilometers" id="txtkms" />

		<%-- <label > <b>  <%--Buying Price (Yen):</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtYen"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Buying Price in Yen" id="txtYen"  />

        Please enter the current international currency rate of Japanese Yen and New Zealand Dollar: <br />
     <b> 1 NZD = 
        <asp:TextBox ID="txtRate" PlaceHolder="Enter current rate as to 1NZ$ = ?Yen" runat="server" Width="366px"></asp:TextBox>
        Yen 
        <br />
        </b>
        <asp:Button class="btn-primary" ID="btnCalculate" runat="server" Text="Calculate Dollar Price" OnClick="btnCalculate_Click" />--%>
        &nbsp;<label ><b>Buying Price (NZ $):</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtDollar"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	
	<asp:TextBox runat="server"  placeholder="Enter Buying Price in Dollar" id="txtDollar"  />


		 <label > <b>  Quantity:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtQuantity"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Quantity" id="txtQuantity" />

		 <label > <b>  Selling Price (NZ $):</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ValidationGroup="message" ErrorMessage="* Required" ControlToValidate="txtSellingPrice"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Selling Price (NZ $)" id="txtSellingPrice" />

		 <label > <b>  Promotion:</b></label> 
	   <select  style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpPromotion" name="D1">
		<option selected="True">Yes</option>
		<option>No</option>

	  </select>

		
		<button ID="btnAddCar"  OnClick="btnAddCar_Click" ValidationGroup="message" type="submit" class="registerbtn">Add Car</button>
		<asp:Label ID="lblMessage" font-color="red" Font-Bold="True" runat="server" ForeColor="#CC0000" ></asp:Label>
 
	 </div>
	<script>
 var e = document.getElementById("dpPromotion");
				var promotion = e.options[e.selectedIndex].value;
	</script>


        </b>
        </label>
</asp:Content>
