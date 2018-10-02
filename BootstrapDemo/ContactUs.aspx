<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="BootstrapDemo.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
	<header>
		<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<style>
			.content {
	max-width: 500px;
	margin: auto;
}

			body {
	font-family: Arial, Helvetica, sans-serif;
	/*background-color: black;*/
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
			</style>
	</header>
	
   

		<div class="container">

	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Contact Us</h1>
		 <p>Any Queries? Leave Us a Message.</p>
	<hr>
  <br />
		
  
	<label for="name" > <b>  Name:</b></label> 
	<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="message" ErrorMessage="* Name Required" ControlToValidate="txtName"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Name" id="txtName" />
	

		<label for="contactNo" > <b>  Contact Number:</b></label> 
	<asp:TextBox runat="server"  placeholder="Enter Contact Number" id="txtContactNo" />

	

		 <label for="email" > <b>  Email Address:</b></label>
			 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup="message" runat="server" ErrorMessage="* Email Required" ControlToValidate="txtEmailId" Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Email Id" id="txtEmailId" />

		 <label for="message" > <b>  Message: </b></label> 
			<asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="message" runat="server" ErrorMessage="* Message Required" ControlToValidate="txtMessage"  Font-Size="small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
	<asp:TextBox runat="server"  placeholder="Enter Message" id="txtMessage" Height="239px" />

		
		<button ID="btnSend"  OnClick="btnSend_Click" type="submit" ValidationGroup="message" class="registerbtn">Send Message</button>
			
 
			<br />
			<asp:Label class="alert-danger" ID="lblMessage" runat="server" ForeColor="#CC0000"></asp:Label>
			
		</div>


	<br />
 
	<!DOCTYPE link href="https://maps/documentation/javascript/examples/default.css" rel="stylesheet" />  

				<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>  
	<script>  
		var mapcode;  
		var diag;  
		function initialize() {  
			mapcode = new google.maps.Geocoder();  
			var lnt = new google.maps.LatLng(-36.9781467, 174.8607234);  
			var diagChoice = {  
				zoom: 9,  
				center: lnt,  
				diagId: google.maps.MapTypeId.ROADMAP  
			}  
			diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);  
		}  
		function getmap() {  
			var completeaddress = document.getElementById('txt_location').value;  
			mapcode.geocode({ 'address': completeaddress }, function (results, status) {  
				if (status == google.maps.GeocoderStatus.OK) {  
					diag.setCenter(results[0].geometry.location);  
					var hint = new google.maps.Marker({  
						diag: diag,  
						position: results[0].geometry.location  
					});  
				} else {  
					alert('Location Not Tracked. ' + status);  
				}  
			});  
		}  
		google.maps.event.addDomListener(window, 'load', initialize);  
	</script>  
  
		<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>  
	<script>  
		var mapcode;  
		var diag;  
		function initialize() {  
			mapcode = new google.maps.Geocoder();  
			var lnt = new google.maps.LatLng(-36.9781467, 174.8607234);  
			var diagChoice = {  
				zoom: 9,  
				center: lnt,  
				diagId: google.maps.MapTypeId.ROADMAP  
			}  
			diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);  
		}  
		function getmap() {  
			var completeaddress = document.getElementById('txt_location').value;  
			mapcode.geocode({ 'address': completeaddress }, function (results, status) {  
				if (status == google.maps.GeocoderStatus.OK) {  
					diag.setCenter(results[0].geometry.location);  
					var hint = new google.maps.Marker({  
						diag: diag,  
						position: results[0].geometry.location  
					});  
				} else {  
					alert('Location Not Tracked. ' + status);  
				}  
			});  
		}  
		google.maps.event.addDomListener(window, 'load', initialize);  
	</script>  
  
	  


</asp:Content>
