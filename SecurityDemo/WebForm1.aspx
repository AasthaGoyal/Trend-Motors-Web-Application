<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="SecurityDemo.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Your Password:
            <asp:TextBox ID="txtPassword" runat="server" Width="209px"></asp:TextBox>
            <asp:Button ID="btnShowMeHash" runat="server" OnClick="Button1_Click" Text="Show me Hash" Width="116px" />
            <br />
            <asp:Label ID="lblHash" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
