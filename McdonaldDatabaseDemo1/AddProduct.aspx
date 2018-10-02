<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="McdonaldDatabaseDemo1.AddProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 248px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <h1> Add Products:</h1> <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Product ID:</td>
                    <td>
                        <asp:TextBox ID="txtProductId" runat="server" Enabled="False" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Name:</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Description:</td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Image:</td>
                    <td>
                        <asp:TextBox ID="txtImage" runat="server" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Price:</td>
                    <td>
                        <asp:TextBox ID="txtPrice" runat="server" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Category:</td>
                    <td>
                        <asp:TextBox ID="txtCategory" runat="server" Width="284px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" Width="133px" />
                    </td>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" OnClick="btnAdd_Click" Text="Add" Width="133px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
