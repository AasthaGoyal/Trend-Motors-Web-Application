<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccessCustomers.aspx.cs" Inherits="ListViewDemo.AccessCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 254px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1" style="height: 198px">
                <tr>
                    <td colspan="3">
                        <h1 style="color: #008080">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Customer Registration</h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;Customer Name:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtName" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="*Name Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Contact Number:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtContactNo" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtContactNo" ErrorMessage="*Contact Number Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;Address:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtAddress" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">Username (Email Id):</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtUsername" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtUsername" ErrorMessage="*Username Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">Password:</td>
                    <td style="width: 256px; height: 23px">
                        <asp:TextBox ID="txtPassword" runat="server" Width="245px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Password Required" ForeColor="Red" ValidationGroup="staff"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style22">
                        <asp:TextBox ID="txthash" runat="server" Visible="False" Width="245px"></asp:TextBox>
                    </td>
                    <td style="width: 256px; height: 23px; ">
                        <asp:Button ID="btnAddCustomer" runat="server" OnClick="btnAddStaff_Click" Text="Add Customer" ValidationGroup="staff" Width="253px" />
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22">&nbsp;</td>
                    <td class="auto-style21" style="width: 256px; height: 23px">
                        <asp:Label ID="txtMessage" runat="server" ForeColor="#660066"></asp:Label>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                </tr>
            </table>
            <br />
            <h1 style="color: #008080">Search Customers:</h1>
            Enter the name of the Customer you want to search:&nbsp;
            <asp:TextBox ID="txtCustName" runat="server" Width="279px"></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
            <br />
            <br />
            <asp:DataList ID="d1" runat="server" DataKeyField="customerId" DataSourceID="SqlDataSource3" Visible="False">
                <ItemTemplate>
                    customerId:
                    <asp:Label ID="customerIdLabel" runat="server" Text='<%# Eval("customerId") %>' />
            <br />
                    name:
                    <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
                    phoneNo:
                    <asp:Label ID="phoneNoLabel" runat="server" Text='<%# Eval("phoneNo") %>' />
            <br />
                    custAddress:
                    <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
            <br />
                    username:
                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
            <br />
                    custPassword:
                    <asp:Label ID="custPasswordLabel" runat="server" Text='<%# Eval("custPassword") %>' />
            <br />
                    hashPassword:
                    <asp:Label ID="hashPasswordLabel" runat="server" Text='<%# Eval("hashPassword") %>' />
            <br />
<br />
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT * FROM [tblCustomers] WHERE ([name] = @name)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtCustName" Name="name" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
            <h1 style="color: #008080">Edit/Delete Customers</h1>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="customerId" DataSourceID="SqlDataSource1" Width="532px">
                <Columns>
                    <asp:BoundField DataField="customerId" HeaderText="Customer Id" InsertVisible="False" ReadOnly="True" SortExpression="customerId" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="phoneNo" HeaderText="Phone No" SortExpression="phoneNo" />
                    <asp:BoundField DataField="custAddress" HeaderText="Address" SortExpression="custAddress" />
                    <asp:BoundField DataField="username" HeaderText="Username" SortExpression="username" />
                    <asp:BoundField DataField="hashPassword" HeaderText="Password" SortExpression="hashPassword" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" DeleteCommand="DELETE FROM [tblCustomers] WHERE [customerId] = @customerId" InsertCommand="INSERT INTO [tblCustomers] ([username], [hashPassword], [custAddress], [phoneNo], [name]) VALUES (@username, @hashPassword, @custAddress, @phoneNo, @name)" SelectCommand="SELECT [username], [hashPassword], [custAddress], [phoneNo], [name], [customerId] FROM [tblCustomers]" UpdateCommand="UPDATE [tblCustomers] SET [username] = @username, [hashPassword] = @hashPassword, [custAddress] = @custAddress, [phoneNo] = @phoneNo, [name] = @name WHERE [customerId] = @customerId">
                <DeleteParameters>
                    <asp:Parameter Name="customerId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="hashPassword" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="phoneNo" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="hashPassword" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="phoneNo" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="customerId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
        </div>
    </form>
</body>
</html>
