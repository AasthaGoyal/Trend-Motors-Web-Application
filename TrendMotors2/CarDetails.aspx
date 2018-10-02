<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarDetails.aspx.cs" Inherits="TrendMotors2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <table class="w-100">
            <tr>
                <td class="text-center" colspan="4">
                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000066" Text='<%# Eval("model") %>'></asp:Label>
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="4">
                    <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>' Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("carImage1") %>' Width="316px" />
                </td>
                <td class="text-center" colspan="2">
                   <b>  Kilometers:</b>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("kms") %>' Font-Size="Large"></asp:Label>
                    <br />
                    <b>Car Id: </b>
                    <asp:Label ID="Label1" runat="server" Font-Size="Large" Text='<%# Eval("carId") %>'></asp:Label>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="text-center" style="height: 62px;" colspan="4">
                    <br />
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("carDescription", "{0}") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1" style="text-align: center; width: 71px">
                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("carImage4") %>' Height="145px" Width="169px" />
                </td>
                <td style="text-align: center; ">
                    <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("carImage5") %>' Height="145px" Width="169px" />
                </td>
                <td class="text-center">
                    <asp:Image ID="Image2" runat="server" Height="145px" ImageUrl='<%# Eval("carImage2") %>' Width="169px" />
                </td>
                <td class="text-center">
                    <asp:Image ID="Image3" runat="server" Height="145px" ImageUrl='<%# Eval("carImage3") %>' Width="169px" />
                </td>
            </tr>
        </table>
    </ItemTemplate>
</asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT * FROM [tblCars] WHERE ([carId] = @carId)">
    <SelectParameters>
        <asp:QueryStringParameter Name="carId" QueryStringField="id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
