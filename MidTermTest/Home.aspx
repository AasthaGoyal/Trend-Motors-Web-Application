<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MidTermTest.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            width: 305px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style6">Select Programme for showing course:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="programmeName" DataValueField="programmeName" Height="16px" Width="346px" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbMidTermConnectionString %>" SelectCommand="SELECT DISTINCT [programmeName] FROM [tblCourses]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <br />

    <asp:GridView ID="GridView1" AutoPostBack="true" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="157px" Width="725px">
        <Columns>
            <asp:BoundField DataField="courseCode" HeaderText="courseCode" SortExpression="courseCode" />
            <asp:BoundField DataField="programmeName" HeaderText="programmeName" SortExpression="programmeName" />
            <asp:BoundField DataField="courseName" HeaderText="courseName" SortExpression="courseName" />
            <asp:BoundField DataField="creditHours" HeaderText="creditHours" SortExpression="creditHours" />
            <asp:BoundField DataField="courseDescription" HeaderText="courseDescription" SortExpression="courseDescription" />
            <asp:BoundField DataField="coursePreRequisite" HeaderText="coursePreRequisite" SortExpression="coursePreRequisite" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbMidTermConnectionString %>" SelectCommand="SELECT * FROM [tblCourses] WHERE ([programmeName] = @programmeName)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="programmeName" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>
