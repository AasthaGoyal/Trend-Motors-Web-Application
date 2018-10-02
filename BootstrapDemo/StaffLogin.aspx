<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="StaffLogin.aspx.cs" Inherits="BootstrapDemo.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<link href="StyleSheets/EmpLogin.css" rel="stylesheet" />
	 <form  action="/action_page.php">
		   <div class="container">
		<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Employee Login</h1>
		<p> Please use your username and password to login</p>
		<hr />
	
	

  
	  <label for="uname" ><b>Username</b></label>
	  <input id="txtUsername" type="text" placeholder="Enter Username" name="uname" required>

	  <label for="psw"><b>Password</b></label>
	  <input id="txtPassword" type="password" placeholder="Enter Password" name="psw" required>
		
               <asp:Button ID="btnSubmit" width="100%" runat="server" Text="Login" Height="42px" BackColor="#009900" OnClick="btnSubmit_Click1" />
               <br />

	  <label>
		<input type="checkbox" checked="checked" name="remember"> Remember me
		<br />
	  </label>
		<asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#CC0000" style="text-align: center"></asp:Label>
	</div>

	<div class="container" style="background-color:#f1f1f1">
	  <button type="button" id="btnCancel" onclick="btnCancel_Click" class="cancelbtn">Cancel</button>
	  <span class="psw">  <a href="#" onclick="window.open('FrgetPassword.aspx','FP','width=500, height=50,top=300,left=500,fullscreen=null,resize=0');"> Forgot Password</a>
	</div>
  </form>


    </span>


</asp:Content>
