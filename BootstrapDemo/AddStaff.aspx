<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="BootstrapDemo.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="StyleSheets/WrapContents.css" rel="stylesheet" />
    <link href="StyleSheets/AddStaff.css" rel="stylesheet" />
    <div class="container" id="wrap">

   
	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Register Staff</h1>
         <p>Please fill in this form to create an account.</p>
    <hr>
  <br />
        
  
    <label for="fname" > <b> First Name:</b></label>
    <input type="text" placeholder="Enter First Name" id="txtFirstName" required>

        <label for="lname" > <b> Last Name:</b></label>
     <input type="text" placeholder="Enter Last Name" id="txtLastName" required>

        <label for="contactNo" > <b> Contact Number:</b></label>
     <input type="text" placeholder="Enter Contact Number" id="txtContactNo" required>

         <label for="position" > <b> Position:</b></label>
     <input type="text" placeholder="Enter Contact Number" id="txtPosition" required>

         <label for="email" > <b> Email Address:</b></label>
     <input type="text" placeholder="Enter Email" id="txtEmailId" required>

         <label for="username" > <b> Username: </b></label>
     <input type="text" placeholder="Enter Username" id="txtUsername" required>

         <label for="pwd" > <b> Password:</b></label>
     <input type="text" placeholder="Enter Password" id="txtPassword" required>
        <asp:TextBox ID="txtHashPassword" runat="server" Width="245px" Visible="False"></asp:TextBox>

        <button ID="btnAddStaff"  OnClick="btnAddStaff_Click" type="submit" class="registerbtn">Register</button>
            
 </div>
</asp:Content>
