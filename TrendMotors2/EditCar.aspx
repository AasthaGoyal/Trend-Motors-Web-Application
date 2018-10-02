<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditCar.aspx.cs" Inherits="TrendMotors2.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataKeyNames="carId" DataSourceID="SqlDataSource1" Height="222px" Width="849px">
        <Columns>
              
            <asp:TemplateField HeaderText="Car Id" InsertVisible="False" SortExpression="carId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("carId") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("carId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
               <asp:TemplateField HeaderText="Image" InsertVisible="False" SortExpression="carId">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("carImage1") %>'></asp:Label>
                </EditItemTemplate>
                   <ItemTemplate>
                       <asp:Image ID="Image6" runat="server" Height="88px" ImageUrl='<%# Eval("carImage1") %>' Width="130px" />
                   </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Model" SortExpression="model">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("model") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("model") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Make" SortExpression="make">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("make") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("make") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Price" SortExpression="price">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Description" SortExpression="carDescription">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("carDescription") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("carDescription") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Kilometers" SortExpression="kms">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("kms") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("kms") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Year" SortExpression="carYear">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("carYear") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("carYear") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" Height="29px" Width="113px" />
                    &nbsp;<asp:Button ID="Button2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" Height="32px" Width="114px" />
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" SelectCommand="SELECT [carId], [model], [make], [price], [carDescription], [kms], [carYear], [carImage1] FROM [tblCars]" DeleteCommand="DELETE FROM [tblCars] WHERE [carId] = @carId" InsertCommand="INSERT INTO [tblCars] ([model], [make], [price], [carDescription], [kms], [carYear], [carImage1]) VALUES (@model, @make, @price, @carDescription, @kms, @carYear, @carImage1)" UpdateCommand="UPDATE [tblCars] SET [model] = @model, [make] = @make, [price] = @price, [carDescription] = @carDescription, [kms] = @kms, [carYear] = @carYear, [carImage1] = @carImage1 WHERE [carId] = @carId">
        <DeleteParameters>
            <asp:Parameter Name="carId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="make" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="carDescription" Type="String" />
            <asp:Parameter Name="kms" Type="Int32" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carImage1" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="model" Type="String" />
            <asp:Parameter Name="make" Type="String" />
            <asp:Parameter Name="price" Type="Int32" />
            <asp:Parameter Name="carDescription" Type="String" />
            <asp:Parameter Name="kms" Type="Int32" />
            <asp:Parameter Name="carYear" Type="String" />
            <asp:Parameter Name="carImage1" Type="String" />
            <asp:Parameter Name="carId" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
