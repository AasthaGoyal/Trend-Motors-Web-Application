<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="SellACar.aspx.cs" Inherits="BootstrapDemo.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheets/SellCar.css" rel="stylesheet" />
    <link href="StyleSheets/WrapContents.css" rel="stylesheet" />
    <%--<meta charset="utf-8">--%>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    

   
  <div class="container" id="wrap">
       
   <h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000">Sell a Vehicle:</h1>
	
      <p> Make sure you know the car Id of the car</p>
      <hr />
      <label for="carId">Please Enter the Car Id</label>
    <input type="text" placeholder="Enter Car Id"  id="txtId" name = "txtId" >
      <asp:Button class="btn btn-primary" type="button" ID="btnSearch" onClick="btnSearch_OnClick" runat="server" Text="Search" />
    
      <br />
    
    
      <asp:DataList ID="dl1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1" RepeatColumns="1">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18"><a href='CarDetail.aspx?carId=<%# Eval("carId") %>'>
                        <asp:Image ID="Image3" runat="server" Height="228px" ImageUrl='<%# Eval("carImage1") %>' Width="306px" />
                        </a></td>
                </tr>
                <tr>
                    <td class="auto-style18" style="text-align: center">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("model") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="text-align: center">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="text-align: center">Quantity Left:
                        <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Large" ForeColor="#006600" Text='<%# Eval("carQuantity") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19" style="text-align: center">Buying Price :
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#CC0000" Text='<%# Eval("buyingPrice", "{0:C}") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>

           <br />

    <h2> Enter the buyer's details : </h2>

    <label>Customer Name</label>  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="sellcar"  ErrorMessage=" * " ForeColor="#CC0000" ControlToValidate="txtName" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
              <br />
              <asp:TextBox ID="txtName" class="rf" runat="server" placeholder="Enter Customer name" > </asp:TextBox>
                
         
        
               
           

        <label> Customer Address:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ValidationGroup="sellcar" ErrorMessage=" * " ForeColor="#CC0000" ControlToValidate="txtAddress" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
           <asp:TextBox class="rf" ID="txtAddress" placeholder="Enter Customer Address" runat="server" > </asp:TextBox>
      
          <label>Customer Phone No: </label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="sellcar" ErrorMessage=" * " ForeColor="#CC0000" ControlToValidate="txtPhoneNo" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
          <asp:TextBox class="rf" ID="txtPhoneNo" placeholder="Enter Customer Phone No" runat="server" > </asp:TextBox>
        
           <label>Selling Price:</label> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="sellcar" runat="server" ErrorMessage=" * " ForeColor="#CC0000" ControlToValidate="txtSellingPrice" Font-Bold="True" Font-Size="Large"></asp:RequiredFieldValidator>
          <asp:TextBox class="rf" ID="txtSellingPrice"  placeholder="Enter Selling Price" runat="server" > </asp:TextBox>
      <label>  Please fill in these documents:</label><br />
      <asp:Button ID="btnCin" class="btn btn-primary" runat="server" Text="Download Cin Document" OnClick="btnCin_Click" />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnAgreement" class="btn btn-primary" runat="server" Text="Download Sales Agreement" OnClick="btnAgreement_Click" />
          <br />
      <br />
          <asp:Button ID="btnSell" width="100%" ValidationGroup="sellcar" runat="server" Text="Confirm" Class="btn btn-success" OnClick="btnSell_Click" BackColor="#009900" Height="35px" />
                <br />
           
             <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#660066"></asp:Label>
                
           
          <br />
       <asp:Button ID="btnReport"  class="btn btn-primary" runat="server" Text="Create Report" Visible="false" OnClick=" btnCreateReport_Click"  Width="211px" />
                
           
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [model], [make], [carYear], [buyingPrice], [carQuantity], [price] FROM [tblCars] WHERE ([carId] = @carId)">
              <SelectParameters>
                  <asp:FormParameter FormField="txtId" Name="carId" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
     </div>
      
        

    
    
</asp:Content>
