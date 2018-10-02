<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error403.aspx.cs" Inherits="BootstrapDemo.errorPages.error403" %>

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
        <div style="background-color:black; font-size: x-large;" class="auto-style1">
            <h1 class="auto-style1" style="color: #FF0000; font-weight: bold"> Oops...seems like this page is forbidden!!!!</h1>
            <img src="../Resources/403.jpg" />
            <br />
            <br />
     <a href="Default.aspx" style="text-decoration: underline"> Press here to go back</a>
            <br />
        </div>
    </form>
</body>
</html>
