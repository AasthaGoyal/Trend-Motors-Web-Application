<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Faq.aspx.cs" Inherits="BootstrapDemo.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <link href="Content/site.css" rel="stylesheet" /> 
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="StyleSheets/FaqStyle.css" rel="stylesheet" />
    <div class="container">

	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Frequently Asked Questions:</h1>
		 <hr >
        <asp:Button ID="Button1" class="registerbtn" runat="server" Text="Is there a minimum age to apply for finance" />
         <asp:label class="lbl" runat="server" Text="Yes you need to be atleast 18 years old to apply for finance" />
      <br />
          <asp:Button ID="Button2" class="registerbtn" runat="server" Text="How can I apply for finance?" />
         <asp:label ID="Label1"  runat="server" Text="You can either apply online or by phone. When u apply online, we would be in contact with you in 7-14 business days" />
  <br />
          <asp:Button ID="Button3" class="registerbtn" runat="server" Text="Do I need a deposit?" />
         <asp:label ID="Label2"  runat="server" Text="Not always, we can consider finance upto 100%" />
  <br />
          <asp:Button ID="Button4" class="registerbtn" runat="server" Text="What are the rates and fees to apply for finance?" />
         <asp:label ID="Label3"  runat="server" Text="Rates are determined on the strength of your application" />
  <br />
          <asp:Button ID="Button5" class="registerbtn" runat="server" Text="Can I get a Car Finance on Laerners License?" />
         <asp:label ID="Label4"  runat="server" Text="Yes, we accept Learners License for car finance" />
  <br />
          <asp:Button ID="Button6" class="registerbtn" runat="server" Text="Can I get a car finance on an overseas license?" />
         <asp:label ID="Label5"  runat="server" Text="Yes, we accept overseas licence as per lending criteria" />
  
        </div>

</asp:Content>
