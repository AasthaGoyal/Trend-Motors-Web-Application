<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TrendMotors2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <b>Search By:</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:DropDownList ID="dpModel" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dlSearchCriteria_SelectedIndexChanged" Width="273px" DataSourceID="SqlDataSource3" DataTextField="model" DataValueField="model">
    <asp:ListItem Selected="True">Make</asp:ListItem>
    <asp:ListItem>Model</asp:ListItem>
</asp:DropDownList>
<asp:DropDownList ID="dpMake" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dlSearchCriteria_SelectedIndexChanged" Width="273px" DataSourceID="SqlDataSource4" DataTextField="make" DataValueField="make">
    <asp:ListItem Selected="True">Make</asp:ListItem>
    <asp:ListItem>Model</asp:ListItem>
</asp:DropDownList>
&nbsp;<asp:Button ID="btnSearch" runat="server" BackColor="#FF6600" OnClick="btnSearch_Click" Text="Search" Width="209px" style="height: 33px" />
&nbsp;&nbsp;&nbsp;
    <br />

<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT DISTINCT [model] FROM [tblCars]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT [carImage1], [carId], [model], [make], [carYear], [price] FROM [tblCars]"></asp:SqlDataSource>
    <br />
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px"  >
      <%--  OnItemCommand="DataList1_ItemCommand" RepeatColumns="4">--%>
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("carImage1") %>' Height="286px" Width="372px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 255px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("model") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("make") %>'></asp:Label>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("carYear") %>'></asp:Label>
                    </td>
                    <td class="text-right" style="width: 102px">
                        <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="viewDetail" CommandArgument='<%# Eval("carId") %>' Width="367px"/>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <div class="text-left">
       
    </div>
    </asp:Content>
