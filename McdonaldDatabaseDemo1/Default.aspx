<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="McdonaldDatabaseDemo1.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {

           $('#tabs').tabs();
       });

        

   </script>
 
   

<div id="tabs">
    <ul>
        <li><a href="#tabs-1">Tab 1</a></li>
        <li><a href="#tabs-2">Tab 2</a></li>
        <li><a href="#tabs-3">Tab 3</a></li>
    </ul>
    <div id="tabs-1">Content 1</div>
    <div id="tabs-2">Content 2</div>
    <div id="tabs-3">Content 3<br />
        <br />
    </div>


</div>
</asp:Content>
