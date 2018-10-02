<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="BootstrapDemo.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
        
        <%--<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    
    <link href="StyleSheets/WrapContents.css" rel="stylesheet" />

    <div class="container" id="wrap">
    <h1 style="color: #FF0000; font-weight: bold; font-family: Calibri; font-size: xx-large">About Trend Motors:</h1>
<p>    <span>Trend motors was started by Bhuvnesh in 2016 who’s dream is to supply quality cars at competitive prices. He set about gathering like minded people to form a team of dedicated and experienced co-workers to help him on his mission. So the correct mix of people, experience, and huge industry knowledge now forms the tight compact team that is Trend Motors.</span></p>

    <p><span>Selling good cars at better prices throughout New Zealand from the North cape to bluff our experienced team can help you all the way, from the first enquiry to the delivery of the vehicle. We pride ourselves on stocking a wide range of vehicles from the top end &nbsp;to the family cars and the cutest fuel efficient cars. We will always have a selection and a car for you.</span></p>
      <h2 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000"> How to Find Us?</h2>
      <div id="map_populate" style="width:100%; height:500px; border: 5px solid #5E5454;">
          </div>
 </div>
    <!DOCTYPE link href="https://maps/documentation/javascript/examples/default.css" rel="stylesheet" />  

                <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>  
    <script>  
        var mapcode;  
        var diag;  
        function initialize() {  
            mapcode = new google.maps.Geocoder();  
            var lnt = new google.maps.LatLng(-36.9781467, 174.8607234);  
            var diagChoice = {  
                zoom: 9,  
                center: lnt,  
                diagId: google.maps.MapTypeId.ROADMAP  
            }  
            diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);  
        }  
        function getmap() {  
            var completeaddress = document.getElementById('txt_location').value;  
            mapcode.geocode({ 'address': completeaddress }, function (results, status) {  
                if (status == google.maps.GeocoderStatus.OK) {  
                    diag.setCenter(results[0].geometry.location);  
                    var hint = new google.maps.Marker({  
                        diag: diag,  
                        position: results[0].geometry.location  
                    });  
                } else {  
                    alert('Location Not Tracked. ' + status);  
                }  
            });  
        }  
        google.maps.event.addDomListener(window, 'load', initialize);  
    </script>  
  
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false" type="text/javascript"></script>  
    <script>  
        var mapcode;  
        var diag;  
        function initialize() {  
            mapcode = new google.maps.Geocoder();  
            var lnt = new google.maps.LatLng(-36.9781467, 174.8607234);  
            var diagChoice = {  
                zoom: 9,  
                center: lnt,  
                diagId: google.maps.MapTypeId.ROADMAP  
            }  
            diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);  
        }  
        function getmap() {  
            var completeaddress = document.getElementById('txt_location').value;  
            mapcode.geocode({ 'address': completeaddress }, function (results, status) {  
                if (status == google.maps.GeocoderStatus.OK) {  
                    diag.setCenter(results[0].geometry.location);  
                    var hint = new google.maps.Marker({  
                        diag: diag,  
                        position: results[0].geometry.location  
                    });  
                } else {  
                    alert('Location Not Tracked. ' + status);  
                }  
            });  
        }  
        google.maps.event.addDomListener(window, 'load', initialize);  
    </script>  
  
      
</asp:Content>
