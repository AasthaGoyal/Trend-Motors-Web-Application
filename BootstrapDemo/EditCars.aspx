<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="EditCars.aspx.cs" Inherits="BootstrapDemo.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Edit/Delete Cars For Sale:</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="carId" DataSourceID="SqlDataSource1"  Width="100%" AllowPaging="True">
        <Columns>
            <asp:BoundField DataField="carId" HeaderText="Car Id" InsertVisible="False" ReadOnly="True" SortExpression="carId" />
            <asp:TemplateField HeaderText="Image1" SortExpression="carImage1">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("carImage1") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" width="100px" height="100px" ImageUrl='<%# Bind("carImage1") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image2" SortExpression="carImage2">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("carImage2") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    
                    <asp:Image ID="Image1" runat="server" width="100px" height="100px" ImageUrl='<%# Bind("carImage2") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Image3" SortExpression="carImage3">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("carImage3") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" width="100px" height="100px" ImageUrl='<%# Bind("carImage3") %>'/>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="model" HeaderText="Make" SortExpression="model" />
            <asp:BoundField DataField="make" HeaderText="Model" SortExpression="make" />
            <asp:BoundField DataField="carYear" HeaderText="Year" SortExpression="carYear" />
            <asp:BoundField DataField="carDescription" HeaderText="Description" SortExpression="carDescription" />
            <asp:BoundField DataField="kms" HeaderText="Kms" SortExpression="kms" />
            <asp:BoundField DataField="engineSize" HeaderText="Engine Size" SortExpression="engineSize" />
            <asp:BoundField DataField="fuel" HeaderText="Fuel" SortExpression="fuel" />
            <asp:BoundField DataField="seats" HeaderText="Seats" SortExpression="seats" />
            <asp:BoundField DataField="promotion" HeaderText="Promotion" SortExpression="promotion" />
            <asp:BoundField DataField="buyingPrice" HeaderText="Buying Price" SortExpression="buyingPrice" />
            <asp:BoundField DataField="carQuantity" HeaderText="Quantity" SortExpression="carQuantity" />
            <asp:BoundField DataField="price" HeaderText="Selling Price" SortExpression="price" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" DeleteCommand="DELETE FROM [tblCars] WHERE [carId] = @carId" InsertCommand="INSERT INTO [tblCars] ([carImage1], [carImage2], [carImage3], [model], [make], [carYear], [carDescription], [kms], [engineSize], [fuel], [seats], [promotion], [buyingPrice], [carQuantity], [price]) VALUES (@carImage1, @carImage2, @carImage3, @model, @make, @carYear, @carDescription, @kms, @engineSize, @fuel, @seats, @promotion, @buyingPrice, @carQuantity, @price)" SelectCommand="SELECT [carId], [carImage1], [carImage2], [carImage3], [model], [make], [carYear], [carDescription], [kms], [engineSize], [fuel], [seats], [promotion], [buyingPrice], [carQuantity], [price] FROM [tblCars]" UpdateCommand="UPDATE [tblCars] SET [carImage1] = @carImage1, [carImage2] = @carImage2, [carImage3] = @carImage3, [model] = @model, [make] = @make, [carYear] = @carYear, [carDescription] = @carDescription, [kms] = @kms, [engineSize] = @engineSize, [fuel] = @fuel, [seats] = @seats, [promotion] = @promotion, [buyingPrice] = @buyingPrice, [carQuantity] = @carQuantity, [price] = @price WHERE [carId] = @carId">
        <DeleteParameters>
            <asp:Parameter Name="carId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="carImage1" Type="String" />
            <asp:Parameter Name="carImage2" Type="String" />
            <asp:Parameter Name="carImage3" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="make" Type="String" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carDescription" Type="String" />
            <asp:Parameter Name="kms" Type="Int32" />
            <asp:Parameter Name="engineSize" Type="Int32" />
            <asp:Parameter Name="fuel" Type="String" />
            <asp:Parameter Name="seats" Type="Int32" />
            <asp:Parameter Name="promotion" Type="String" />
            <asp:Parameter Name="buyingPrice" Type="Int32" />
            <asp:Parameter Name="carQuantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="carImage1" Type="String" />
            <asp:Parameter Name="carImage2" Type="String" />
            <asp:Parameter Name="carImage3" Type="String" />
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="make" Type="String" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carDescription" Type="String" />
            <asp:Parameter Name="kms" Type="Int32" />
            <asp:Parameter Name="engineSize" Type="Int32" />
            <asp:Parameter Name="fuel" Type="String" />
            <asp:Parameter Name="seats" Type="Int32" />
            <asp:Parameter Name="promotion" Type="String" />
            <asp:Parameter Name="buyingPrice" Type="Int32" />
            <asp:Parameter Name="carQuantity" Type="Int32" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="carId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
