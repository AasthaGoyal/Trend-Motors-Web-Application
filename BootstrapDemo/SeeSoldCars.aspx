<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="SeeSoldCars.aspx.cs" Inherits="BootstrapDemo.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000"> All Sold Cars:</h1>
<br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <asp:Image ID="Image6" runat="server" Height="169px" ImageUrl='<%# Eval("carImage1") %>' Width="233px" />
            <br />
            carId:
            <asp:Label ID="carIdLabel" runat="server" Text='<%# Eval("carId") %>' />
            <br />
            <asp:Label ID="modelLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text='<%# Eval("model") %>' />
            <asp:Label ID="makeLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text='<%# Eval("make") %>' />
            <asp:Label ID="carYearLabel" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000099" Text='<%# Eval("carYear") %>' />
            <br />
            <asp:Label ID="carDescriptionLabel" runat="server" Text='<%# Eval("carDescription") %>' />
            <br />
            Kilometers:
            <asp:Label ID="kmsLabel" runat="server" Text='<%# Eval("kms") %>' />
            <br />
            Engine Size:
            <asp:Label ID="engineSizeLabel" runat="server" Text='<%# Eval("engineSize") %>' />
            <br />
            Fuel:
            <asp:Label ID="fuelLabel" runat="server" Text='<%# Eval("fuel") %>' />
            <br />
            Seats:
            <asp:Label ID="seatsLabel" runat="server" Text='<%# Eval("seats") %>' />
            <br />
            Price:
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
            <br />
            Car Quantity:
            <asp:Label ID="carQuantityLabel" runat="server" Text='<%# Eval("carQuantity") %>' />
            <br />
            Promotion:
            <asp:Label ID="promotionLabel" runat="server" Text='<%# Eval("promotion") %>' />
            <br />
            Buying Price:
            <asp:Label ID="buyingPriceLabel" runat="server" Font-Bold="True" ForeColor="#CC0000" Text='<%# Eval("buyingPrice") %>' />
            <br />
            Selling Price:
            <asp:Label ID="sellingPriceLabel" runat="server" Font-Bold="True" ForeColor="#CC0000" Text='<%# Eval("sellingPrice") %>' />
            <br />
            Customer Name:
            <asp:Label ID="custnameLabel" runat="server" Text='<%# Eval("custname") %>' />
            <br />
            Phone No:
            <asp:Label ID="phoneNoLabel" runat="server" Text='<%# Eval("phoneNo") %>' />
            <br />
            Customer Address:
            <asp:Label ID="custAddressLabel" runat="server" Text='<%# Eval("custAddress") %>' />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="soldCars" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
</asp:Content>
