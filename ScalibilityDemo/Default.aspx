<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ScalibilityDemo.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1> Paradise Restaurant</h1>
            <hr />

            <asp:Button ID="btnLunch" runat="server" OnClick="btnLunch_Click" Text="Lunch Menu" Width="197px" />
            <asp:Button ID="btnBreakfast" runat="server" OnClick="btnBreakfast_Click" Text="Breakfast Menu" Width="197px" />
            <asp:Button ID="btnDinner" runat="server" OnClick="btnDinner_Click" Text="Dinner Menu" Width="197px" />
            <hr />
            <h1> Welcome to the Paradise Restaurant</h1>
        </div>
    </form>
</body>
</html>
