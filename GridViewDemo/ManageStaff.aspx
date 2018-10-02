<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageStaff.aspx.cs" Inherits="GridViewDemo.ManageStaff" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
        .auto-style3 {
            width: 196px;
        }
        .auto-style4 {
            height: 23px;
            width: 196px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Name:</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Upload Image:</td>
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:DataList ID="DataList1" runat="server" Height="226px" Width="208px" DataSourceID="MockExamDataSourcs">

            <ItemTemplate>
                <table>
                    <tr> <td>
                        <%#Eval("name") %>
                         </td>
                        <td> <img src ="<%#Eval("image") %>" height ="100" width =" 100" /></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="MockExamDataSourcs" runat="server" ConnectionString="<%$ ConnectionStrings:dbMockExamConnectionString %>" SelectCommand="SELECT * FROM [uploads]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMockExamConnectionString %>" SelectCommand="SELECT * FROM [uploads]"></asp:SqlDataSource>
    </form>
</body>
</html>
