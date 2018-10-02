<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error.aspx.cs" Inherits="BootstrapDemo.errorPages.error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div style=" font-size: x-large;" class="auto-style1">
            <h1 class="auto-style1" style="color: #FF0000; font-weight: bold"> Oops...Something seems to have gone wrong!</h1>
            <p class="auto-style1" style="color: #FF0000; font-weight: bold"> 
                <asp:Image ID="Image1" src="/resources/download.jpg" runat="server" Height="248px" Width="295px" BackColor="Black" />
            </p>
            <p class="auto-style1" style="color: #000000; font-weight: bold"> Try going back by pressing the link below or refresh the page.</p>
         
            <div class="auto-style1">
         
            <br />
     <a href="Default.aspx" style="text-decoration: underline"> Press here to go back</a>
            <br />
            </div>
        </div>
    </form>
</body>
</html>
