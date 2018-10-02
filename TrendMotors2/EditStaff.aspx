<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditStaff.aspx.cs" Inherits="TrendMotors2.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="staffId" DataSourceID="SqlDataSource1" Height="218px" Width="704px">
    <Columns>
        <asp:BoundField DataField="staffId" HeaderText="Staff Id" InsertVisible="False" ReadOnly="True" SortExpression="staffId" />
        <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
        <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
        <asp:BoundField DataField="position" HeaderText="Position" SortExpression="position" />
        <asp:BoundField DataField="contactNo" HeaderText="Contact No" SortExpression="contactNo" />
        <asp:BoundField DataField="emailId" HeaderText="Email Id" SortExpression="emailId" />
        <asp:BoundField DataField="staffUsername" HeaderText="Username" SortExpression="staffUsername" />
        <asp:BoundField DataField="staffPassword" HeaderText="Password" SortExpression="staffPassword" />
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=aago001;Initial Catalog=dbTrendMotors;Integrated Security=True" DeleteCommand="DELETE FROM [tblStaff] WHERE [staffId] = @staffId" InsertCommand="INSERT INTO [tblStaff] ([firstName], [lastName], [position], [contactNo], [emailId], [staffUsername], [staffPassword]) VALUES (@firstName, @lastName, @position, @contactNo, @emailId, @staffUsername, @staffPassword)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [tblStaff]" UpdateCommand="UPDATE [tblStaff] SET [firstName] = @firstName, [lastName] = @lastName, [position] = @position, [contactNo] = @contactNo, [emailId] = @emailId, [staffUsername] = @staffUsername, [staffPassword] = @staffPassword WHERE [staffId] = @staffId">
    <DeleteParameters>
        <asp:Parameter Name="staffId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="position" Type="String" />
        <asp:Parameter Name="contactNo" Type="Int32" />
        <asp:Parameter Name="emailId" Type="String" />
        <asp:Parameter Name="staffUsername" Type="String" />
        <asp:Parameter Name="staffPassword" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="position" Type="String" />
        <asp:Parameter Name="contactNo" Type="Int32" />
        <asp:Parameter Name="emailId" Type="String" />
        <asp:Parameter Name="staffUsername" Type="String" />
        <asp:Parameter Name="staffPassword" Type="String" />
        <asp:Parameter Name="staffId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
