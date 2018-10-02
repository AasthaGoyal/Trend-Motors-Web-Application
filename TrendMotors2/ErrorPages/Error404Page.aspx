<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Error404Page.aspx.cs" Inherits="TrendMotors2.Error_Pages.Error404Page" %>

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
        <div class="auto-style1" style="background-color:black">
            <asp:Image ID="Image1" runat="server" Height="50%" Width="34%" src="/Resources/404.png"/>
          <%-- <h1> The Page cannot be found</h1>
            <h2> Try Reloading the page by refreshing or just press F5</h2>--%>
        </div>
    </form>
</body>
</html>
