<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarByMake.aspx.cs" Inherits="TrendMotors2.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <br />
    <asp:Button ID="btnGoHome" runat="server" Text="< Back To Main Page" OnClick="btnGoHome_Click" Font-Bold="True" />
   <br />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" OnItemCommand="DataList1_ItemCommand"  >
      <%--  OnItemCommand="DataList1_ItemCommand" RepeatColumns="4">--%>
        <ItemTemplate>
            <table class="w-100">
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("carImage1") %>' Height="223px" Width="271px" />
                    </td>
                </tr>
                <tr>
                    <td class="text-left" style="width: 148px">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("model") %>'></asp:Label>
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("make") %>'></asp:Label>
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Large" Text='<%# Eval("carYear") %>'></asp:Label>
                    </td>
                    <td class="text-center" style="width: 102px">
                        <asp:Label ID="Label3" runat="server" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>' Font-Bold="True" Font-Size="Large"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" colspan="2">
                        <asp:Button ID="btnDetails" runat="server" Text="Details" CommandName="viewDetail" CommandArgument='<%# Eval("carId") %>' Width="267px"/>
                    </td>
                </tr>
            </table>
            <br />
        </ItemTemplate>
    </asp:DataList>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [make], [model], [carYear], [price] FROM [tblCars] WHERE ([make] = @make)">
        <SelectParameters>
            <asp:QueryStringParameter Name="make" QueryStringField="make" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</asp:Content>
