    <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="error401.aspx.cs" Inherits="BootstrapDemo.errorPages.error401" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 616px;
            height: 401px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div style="background-color:black" class="auto-style1" >
               <h1 class="auto-style1" style="color: #FF0000; font-weight: bold"> Unauthorized access!!! You need to login to continue...</h1>
               <a href="CustomerLogin.aspx" class=" auto-style1" style="color:darkblue; font-weight: bold; text-decoration: underline; font-size: xx-large;"> Login </a>
               <br />
     <br />
            <img src="../Resources/401.png" class="auto-style2" />
        </div>
    </form>
</body>
</html>
