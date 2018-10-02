<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="EditStaff.aspx.cs" Inherits="BootstrapDemo.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Edit/Delete Staff:</h1>

    <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="staffId" DataSourceID="SqlDataSource1" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="staffId" HeaderText="Staff Id" InsertVisible="False" ReadOnly="True" SortExpression="staffId" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
            <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
            <asp:BoundField DataField="contactNo" HeaderText="Contact No" SortExpression="contactNo" />
            <asp:BoundField DataField="emailId" HeaderText="Email Id" SortExpression="emailId" />
            <asp:BoundField DataField="staffUsername" HeaderText="Username" SortExpression="staffUsername" />
            <asp:BoundField DataField="staffPassword" HeaderText="Password" SortExpression="staffPassword" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" DeleteCommand="DELETE FROM [tblStaff] WHERE [staffId] = @staffId" InsertCommand="INSERT INTO [tblStaff] ([firstName], [lastName], [position], [contactNo], [emailId], [staffUsername],[staffPassword]) VALUES (@firstName, @lastName, @position, @contactNo, @emailId, @staffUsername, @staffPassword)" SelectCommand="SELECT [staffId], [firstName], [lastName], [position], [contactNo], [emailId], [staffUsername], [staffPassword] FROM [tblStaff]" UpdateCommand="UPDATE [tblStaff] SET [firstName] = @firstName, [lastName] = @lastName, [position] = @position, [contactNo] = @contactNo, [emailId] = @emailId, [staffUsername] = @staffUsername, [staffPassword] = @staffPassword WHERE [staffId] = @staffId">
        <DeleteParameters>
            <asp:Parameter Name="staffId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="contactNo" Type="String" />
            <asp:Parameter Name="emailId" Type="String" />
            <asp:Parameter Name="staffUsername" Type="String" />
            <asp:Parameter Name="staffPassword" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="firstName" Type="String" />
            <asp:Parameter Name="lastName" Type="String" />
            <asp:Parameter Name="position" Type="String" />
            <asp:Parameter Name="contactNo" Type="String" />
            <asp:Parameter Name="emailId" Type="String" />
            <asp:Parameter Name="staffUsername" Type="String" />
            <asp:Parameter Name="staffPassword" Type="String" />
            <asp:Parameter Name="staffId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
