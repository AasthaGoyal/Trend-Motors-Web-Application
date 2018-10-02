<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="Vehicles.aspx.cs" Inherits="BootstrapDemo.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
  
     <div class="container" >
          <%--<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    --%>     <%--<span class="glyphicon glyphicon-search" style="left: 0px; top: 1px; height: 37px; width: 50px"></span>--%>
             <h1 style="color:black; font-weight: bold; font-family: Calibri; font-size: xx-large"><img src="resources/search.jpg" runat="server" style="width: 52px; height: 46px" /> Search Vehicles:</h1>
         <br />
         <table style="width: 1071px">
             <tr>
                 <td style="width: 223px; height: 20px">  <Label ID="lblModel" for="model" >Make: </Label></td>
                 <td style="width: 220px; height: 20px">  <Label ID="lblMake" for="make" >Model: </Label></td>
                 <td style="height: 20px">  <Label ID="lblPrice" for="price" >Price: </Label></td>
                 <td style="height: 20px">  <Label ID="lblYear" for="year" >Year: </Label></td>
                 <td style="width: 720px;" rowspan="2" class="text-center">  
                     <asp:Button class="btn-success" ID="btnSearch" runat="server" Height="27px" Text="Search" Width="173px" OnClick="btnSearch_Click" />
                 </td>
             </tr>
             <tr>
                 <td style="width: 223px">
                     <asp:DropDownList ID="dpModel" runat="server" Height="43px" Width="204px" DataSourceID="dsLoadModel" DataTextField="model" DataValueField="model" Font-Size="Medium">
                         <asp:ListItem Selected="True">All</asp:ListItem>
                     </asp:DropDownList>
    
                 </td>
                 <td style="width: 220px">
                     <asp:DropDownList ID="dpMake" runat="server" Height="43px" Width="204px" DataSourceID="dsLoadMake" DataTextField="make" DataValueField="make" Font-Size="Medium"  >
                         <asp:ListItem Selected="True"> All</asp:ListItem>
                     </asp:DropDownList>
       
                 </td>
                  <td style="width: 220px">
                     <asp:DropDownList ID="dpPrice" runat="server" Height="43px" Width="204px" DataTextField="make" DataValueField="make" AutoPostBack="True" Font-Size="Medium"  >
                         <asp:ListItem Selected="True">All</asp:ListItem>
                         <asp:ListItem>Less than 2000</asp:ListItem>
                         <asp:ListItem>2000 - 3000</asp:ListItem>
                         <asp:ListItem>3000 - 4000</asp:ListItem>
                         <asp:ListItem>4000 - 5000</asp:ListItem>
                         <asp:ListItem>5000 - 6000</asp:ListItem>
                         <asp:ListItem>6000 - 7000</asp:ListItem>
                         <asp:ListItem Value="7000 - 8000">7000 - 8000</asp:ListItem>
                         <asp:ListItem Value="8000 - 9000">8,000 - 9,000</asp:ListItem>
                         <asp:ListItem Value="Greater than 9,000">Greater than 9,000</asp:ListItem>
                      </asp:DropDownList>
       
                 </td>
                  <td style="width: 220px">
                     <asp:DropDownList ID="dpYear" runat="server" Height="43px" Width="204px" AutoPostBack="True" Font-Size="Medium"  >
                         <asp:ListItem Selected="True">All</asp:ListItem>
                         <asp:ListItem>Before 1990</asp:ListItem>
                         <asp:ListItem>1990 - 1995</asp:ListItem>
                         <asp:ListItem>1996 - 2000</asp:ListItem>
                         <asp:ListItem>2001 - 2005</asp:ListItem>
                         <asp:ListItem>2006 - 2010</asp:ListItem>
                         <asp:ListItem>2011 - 2015</asp:ListItem>
                         <asp:ListItem>2015 and above</asp:ListItem>
                      </asp:DropDownList>
       
                 </td>
             </tr>
         </table>
        
       <br />
         <br />
         <%--  <asp:DataList ID="dlSearchShow" Visible="False" runat="server" DataKeyField="carId" DataSourceID="dsAll" RepeatColumns="6">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">
                         <a href='CarDetail.aspx?carId=<%# Eval("carId") %>'> <asp:Image ID="Image3" runat="server" Height="228px" ImageUrl='<%# Eval("carImage1") %>' Width="306px" /></a>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("model") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>
                    </td>
                </tr>
            
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>--%>

    <asp:DataList ID="dlShowAll" runat="server" DataKeyField="carId" DataSourceID="dsAll" RepeatColumns="5">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style18">
                         <a href='CarDetail.aspx?carId=<%# Eval("carId") %>'> <asp:Image ID="Image3" runat="server" Height="228px" ImageUrl='<%# Eval("carImage1") %>' Width="306px" /></a>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style18">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("model") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
                        &nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style19">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>
                    </td>
                </tr>
            
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
         <asp:TextBox ID="txtPrice1" runat="server" Visible = "false"></asp:TextBox>
         <asp:TextBox ID="txtPrice2" runat="server" Visible="false"></asp:TextBox>
         <asp:TextBox ID="txtYear1" runat="server" Visible ="false"></asp:TextBox>
         <asp:TextBox ID="txtYear2" runat="server" Visible="false"></asp:TextBox>

    <asp:SqlDataSource ID="dsAll" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [model], [make], [carYear], [carQuantity], [price] FROM [tblCars]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsMakeModel" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT carId, carImage1, model, carYear, make, price FROM tblCars WHERE (model = @model) AND (make = @make) ">
        <SelectParameters>
            <asp:ControlParameter ControlID="dpModel" Name="model" PropertyName="SelectedValue" Type="String" DefaultValue="" />
            <asp:ControlParameter ControlID="dpMake" Name="make" PropertyName="SelectedValue" Type="String" />
           
        </SelectParameters>
    </asp:SqlDataSource>

          
         <br />
         <%--<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="carId" DataValueField="carId">
         </asp:DropDownList>--%>
         <asp:SqlDataSource ID="dsFilterPrice" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [carId], [carImage1], [model], [make], [carYear], [price] FROM [tblCars] WHERE (([price] &gt;= @price) AND ([price] &lt;= @price2) AND ([carYear] &gt;= @carYear) AND ([carYear] &lt;= @carYear2))">
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtPrice1" Name="price" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtPrice2" Name="price2" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="txtYear1" Name="carYear" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="txtYear2" Name="carYear2" PropertyName="Text" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>

          
    <br />
          
         
          
         <asp:SqlDataSource ID="dsLoadMake" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT DISTINCT [make] FROM [tblCars]"></asp:SqlDataSource>
        
         <asp:SqlDataSource ID="dsLoadModel" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT DISTINCT [model] FROM [tblCars]"></asp:SqlDataSource>
&nbsp;</div>
</asp:Content>
