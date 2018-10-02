<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="CarDetail.aspx.cs" Inherits="BootstrapDemo.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:DataList ID="DataList1" runat="server" DataKeyField="carId" DataSourceID="SqlDataSource1" Width="263px">
        <ItemTemplate>
            <h1 class="auto-style16"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("model") %>' ForeColor="#000066"></asp:Label>
                <asp:Label ID="Label2" runat="server" ForeColor="#000066" Text='<%# Eval("make") %>'></asp:Label>
                <asp:Label ID="Label3" runat="server" ForeColor="#000066" Text='<%# Eval("carYear") %>'></asp:Label>
            </h1>
            <h2 class="auto-style7"> <asp:Label ID="Label4" runat="server" ForeColor="#CC0000" Text='<%# Eval("price", "{0:C}") %>'></asp:Label>
        </h2>
                    
          <br />
    
            <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <link href="Content/site.css" rel="stylesheet" /> 
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script>

<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>


            <table style="width:100%">
                <tr><td>

               
    <div class="auto-style6">

<div class="mySlides fade">

  <img class="img-responsive" src='<%# Eval("carImage1") %>' >
  </div>
        
<div class="mySlides fade">


  <img class="img-responsive" src='<%# Eval("carImage2") %>' >

    </div> 
        <div class="mySlides fade">
  <img class="img-responsive" src='<%# Eval("carImage3") %>' >

</div>
        <div class="mySlides fade">

  <img class="img-responsive" src='<%# Eval("carImage4") %>' >
</div>
        <div class="mySlides fade">

  <img class="img-responsive" src='<%# Eval("carImage5") %>' >
</div>
        <div class="mySlides fade">

  <img class="img-responsive" src='<%# Eval("carImage6") %>' >
            </div>
        <div class="mySlides fade">
     <img class="img-responsive" src='<%# Eval("carImage7") %>' >
            </div>
        <div class="mySlides fade">
     <img class="img-responsive" src='<%# Eval("carImage8") %>' >
</div>
</div>


           <div style="text-align:center">
                <span class="dot"></span><span class="dot"></span><span class="dot"></span>
            </div>
        </td>
        
                    <td style="width:50%"> Kilometers: <asp:Label ID="Label5" runat="server" Text='<%# Eval("kms") %>' Font-Bold="True"></asp:Label>
                        <br />
                        Engine Size:
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("engineSize") %>' Font-Bold="True"></asp:Label>
                        <br />
                        Seats:<asp:Label ID="Label7" runat="server" Text='<%# Eval("seats") %>' Font-Bold="True"></asp:Label>
                        <br />
                        Fuel:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("fuel") %>' Font-Bold="True"></asp:Label>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text='<%# Eval("carDescription") %>' Font-Bold="True"></asp:Label>
                        <br />
                        Quantity:<asp:Label ID="Label10" runat="server" Text='<%# Eval("carQuantity") %>' Font-Bold="True"></asp:Label>
                    </td>
                </tr>
            </table>
</div>
<br>

     
            <script>

var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>


        </ItemTemplate>
    </asp:DataList>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT [seats], [engineSize], [fuel], [kms], [carDescription], [carYear], [make], [model], [carId], [carImage1], [carImage2], [carImage3], [carImage4],[carImage5],[carImage6],[carImage7],[carImage8], [price], [carQuantity] FROM [tblCars] WHERE ([carId] = @carId)">
        <SelectParameters>
            <asp:QueryStringParameter Name="carId" QueryStringField="carId" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

    

<asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="#CC0000"></asp:Label>

</asp:Content>
