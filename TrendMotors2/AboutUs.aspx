<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="TrendMotors2.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="color: #FF0000; font-weight: bold; font-family: Calibri; font-size: xx-large"> About Trend Motors:</h1>
<p style="color: rgb(34, 34, 34); font-family: Calibri; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; line-height: 1.6;">
    <span style="background-color: rgba(255, 255, 255, 0);">Trend motors was started by Bhuvnesh in 2016 who’s dream is to supply quality cars at competitive prices. He set about gathering like minded people to form a team of dedicated and experienced co-workers to help him on his mission. So the correct mix of people, experience, and huge industry knowledge now forms the tight compact team that is Trend Motors.</span></p>
<p style="color: rgb(34, 34, 34); font-family: Calibri; font-size: medium; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; box-sizing: border-box; margin: 0px 0px 1.25rem; padding: 0px; line-height: 1.6;">
    <span style="background-color: rgba(255, 255, 255, 0);">Selling good cars at better prices throughout New Zealand from the North cape to bluff our experienced team can help you all the way, from the first enquiry to the delivery of the vehicle. We pride ourselves on stocking a wide range of vehicles from the top end &nbsp;to the family cars and the cutest fuel efficient cars. We will always have a selection and a car for you.</span></p>
    <h2 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000"> How to Find Us?</h2>
      <div id="map_populate" style="width:100%; height:500px; border: 5px solid #5E5454;">
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
