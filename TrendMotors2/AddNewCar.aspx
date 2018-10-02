<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="AddNewStaff.aspx.cs" Inherits="TrendMotors2.WebForm9" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
     <div>
           
           <h1 class="auto-style22">   <asp:Label ID="lblName" runat="server" Text="Label" ForeColor="#660033" Visible="False"></asp:Label></h1>  
            <h1 class="auto-style29">Add a new car for sale</h1>
            <div style="width:100%; text-align:center;">

            
            <table class="auto-style1">
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Model Name:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtname" runat="server" Width="261px" OnTextChanged="txtname_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="* Car Model required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Make:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtmake" runat="server" Width="261px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtmake" ErrorMessage="* Car Make required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Year:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtYear" runat="server" Width="261px" OnTextChanged="txtYear_TextChanged"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtYear" ErrorMessage="* Car Year required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Image 1:</td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="267px" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Image 2:</td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileUpload2" runat="server" Width="267px" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Image 3:</td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileUpload3" runat="server" Width="267px" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Image 4:</td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileUpload4" runat="server" Width="267px" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Image 5:</td>
                    <td class="auto-style30">
                        <asp:FileUpload ID="FileUpload5" runat="server" Width="267px" />
                    </td>
                    <td class="auto-style23">&nbsp;</td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Price:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtPrice" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrice" ErrorMessage="* Car Price required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">Engine Size:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txtEngineSize" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style33">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtEngineSize" ErrorMessage="* Engine Size required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: larger;" class="auto-style31">Fuel:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txtFuel" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style33">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtFuel" ErrorMessage="* Car Fuel required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: larger;" class="auto-style31">Seats:</td>
                    <td class="auto-style32">
                        <asp:TextBox ID="txtSeats" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style33">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtSeats" ErrorMessage="* Number of Seats required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Description:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtDescription" runat="server"  Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDescription" ErrorMessage="*Description required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Kilometers:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtKms" runat="server" Width="260px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtname" ErrorMessage="* Car Kms required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px; font-weight: bold; font-size: larger;" class="auto-style29">Quantity:</td>
                    <td class="auto-style30">
                        <asp:TextBox ID="txtQuantity" runat="server" Width="259px"></asp:TextBox>
                    </td>
                    <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtQuantity" ErrorMessage="* Quantity of the car required" ForeColor="Red" ValidationGroup="test"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 230px" class="auto-style29">&nbsp;</td>
                    <td class="auto-style30">
                        <asp:Button ID="btnAddCar" runat="server" OnClick="btnAddCar_Click" Text="Add Car" ValidationGroup="test" Width="231px" />
                        </td>
                    <td class="auto-style23">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="3" class="auto-style29">
                        <asp:Label ID="Label1" runat="server" ForeColor="#660066" Text="Label" Visible="False"></asp:Label>
                    </td>
                </tr>
            </table>
                </div>
        </div>
   
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style23 {
        text-align: left;
        width: 327px;
    }
    .auto-style29 {
        text-align: left;
    }
    .auto-style30 {
        text-align: left;
        width: 274px;
    }
        .auto-style31 {
            text-align: left;
            width: 230px;
            height: 24px;
        }
        .auto-style32 {
            text-align: left;
            width: 274px;
            height: 24px;
        }
        .auto-style33 {
            text-align: left;
            width: 327px;
            height: 24px;
        }
        .auto-style34 {
            text-align: left;
            width: 230px;
            height: 24px;
            font-weight: bold;
            font-size: larger;
        }
    </style>
</asp:Content>

