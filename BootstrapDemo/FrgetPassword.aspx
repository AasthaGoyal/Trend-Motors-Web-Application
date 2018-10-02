<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FrgetPassword.aspx.cs" Inherits="BootstrapDemo.FrgetPassword" %>

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
        <div class="auto-style1">
            
                <h1 class="auto-style1"> Forgot Password...</h1>
                Enter your registered email id:&nbsp; <asp:TextBox ID="txtEmailId" runat="server" Width="194px"></asp:TextBox>
                &nbsp;<asp:Button ID="txtSubmit" runat="server" Text="Submit" OnClick="txtSubmit_Click" Width="114px" BackColor="#006600"></asp:Button>
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label>
          
            
        </div>
    </form>
</body>
</html>
