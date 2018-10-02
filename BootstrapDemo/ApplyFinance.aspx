<%@ Page Title="" Language="C#" MasterPageFile="~/HomeMaster.Master" AutoEventWireup="true" CodeBehind="ApplyFinance.aspx.cs" Inherits="BootstrapDemo.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="StyleSheets/HomePage.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link href="Content/bootstrap.min.css" rel="stylesheet" /> 
    <link href="Content/site.css" rel="stylesheet" /> 
    <script src="Scripts/jquery-1.9.1.min.js"></script> 
    <script src="Scripts/bootstrap.min.js"></script>

   

   
     

 
   <%--// <form  action="action_page.php">--%>
        <div id="wrap"  >
             <h1>Apply for Finance</h1>
            
                       
    <p>Please fill in this form to apply for finance.</p>
    <hr>
             <table style="width:100%">
                 <tr> <td colspan="6">  <h4 style="font-weight:bold"> 1. Personal Details</h4></td></tr>
            
            <tr>
                <td class="auto-style8" style="width: 168px" > <label for="title">Title*</label></td>
       
     <td>  
       
         <select class="form-control" onchange="run()" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpTitle" name="D1">
        <option>Miss</option>
        <option>Ms</option>
        <option>Mrs</option>
        <option>Mr</option>
      </select>
     </td>
                 <td style="width: 161px" > <label for="fname">&nbsp;&nbsp;&nbsp; First Name*</label></td>
 <td > <input type="text" id="txtFirstname" placeholder="Enter first name" name="pswd"   ></td>
  <td class="auto-style8" style="width: 175px"><label for="lname">&nbsp;&nbsp; Last Name*</label></td>
 <td ><input type="text" id="txtLastname" placeholder="Enter Last name" name="pswd" ></td>

 
            </tr>
            <tr>
                 <td class="auto-style8" style="width: 168px"><label for="dob">
         
         Date Of Birth*</label></td>
  <td class="auto-style6"><input type="date" id="dateOfBirth" name="trip"
               value="2018-08-28"
               min="2018-01-01" max="2018-12-31" class="auto-style6" /></td>
                <td style="width: 161px">
                     <label for="mstatus">&nbsp;&nbsp; Marital Status*</label>
                </td>
                <td class="auto-style6">
                      <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpMaritalStatus">
        <option>Single</option>
        <option>Married</option>
        <option>Partner</option>
       
      </select></td>
                <td class="auto-style8" style="width: 175px">  <label for="noDep">&nbsp;No of Dependants*</label></td>
                <td class="auto-style6"> <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpNoOfDependants">
        <option>0</option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5+</option>
       
      </select>
                    
                   </td>
                
            </tr>
            <tr>
                <td class="auto-style8" style="width: 168px">
                    <label for="currentStatus">Current Status*</label>
                </td>
                
                    <td class="auto-style6"> <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpCurrentStatus">
        <option>NZ Citizen</option>
        <option>NZ Resident</option>
        <option>Work Visa</option>
        <option>Student Visa</option>
        
       
      </select>
                    
                   
</td>
                <td style="width: 161px">  <label for="phoneNo">&nbsp;&nbsp; Phone No*</label> </td>
                <td>  <input type="text" id="txtPhoneNo" placeholder="Enter Phone Number" name="phoneNo" class="auto-style5">
 </td>
                <td class="auto-style8" style="width: 175px"> <label for="email">&nbsp;&nbsp; Email Id</label></td>
                <td>  <input type="text" id="txtEmail" placeholder="Enter Email Id" name="phoneNo" class="auto-style5">
  
  </td>
               
            </tr>
        
 <tr>
     <td class="auto-style8" style="width: 168px"><h4 style="font-weight:bold" > 2. Address Details

         </h4></td>
 </tr>
 
       
            <tr>
                <td class="auto-style8" style="width: 168px">
                    <label for="livingSituation">Living Situation*</label>
                </td>
                <td class="auto-style6"> <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpLivingSituation">
        <option>Rent</option>
        <option>Board</option>
        <option>Own</option>
        <option>Living with Parents</option>
                    <option>Others </option>
        
       
      </select>
                    
                   
</td> 
                    
                  

                  <td style="width: 161px"> <label >&nbsp;&nbsp; Street Address*</label></td>
                <td> <input type="text" id="txtAddress" placeholder="Enter Street Address" name="address" ></td> 
                <td class="auto-style8" style="width: 175px"> <label> &nbsp;&nbsp; Suburb*</label></td>
                <td><input type="text" id="txtSuburb" placeholder="Enter Suburb " name="suburb" > </td>
  
            </tr>
            <tr>
                <td class="auto-style8" style="width: 168px"> <label> City*</label></td>
                <td class="auto-style6"> <input type="text" id="txtCity" placeholder="Enter City" /> </td>
                <td style="width: 161px"> <label> &nbsp;&nbsp; Postcode</label></td>
                <td> <input type="text" id="txtPostcode" placeholder="Enter Postcode"  /> </td>
                <td class="auto-style8" style="width: 175px"> <label> &nbsp;&nbsp; Time at Address<br />
&nbsp; (Years)*</label></td>
                <td> <input type="text" id="txtTime" placeholder="Enter Time at address" /> </td>
            
            </tr>
            <tr>
                 <td class="auto-style8" style="width: 168px"> <label> Rent/Mortgage 
                     <br />
                     payment*</label></td>
                <td class="auto-style6"> <input type="text" id="txtRentPayment" placeholder="Enter City"  /> </td>
             <td style="width: 161px"> <label> &nbsp;Payment Frequency*</label></td>

                
              
                    <td class="auto-style6"> <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpPaymentFrequency">
        <option>Weekly</option>
        <option>Fortnightly</option>
        <option>Monthly</option>
        
       
      </select>
                    
                   
</td> 
                   
                   
            </tr>
        <tr>
            <td colspan="6">  <h4 style="font-weight:bold"> 3. Licence Details</h4></td>
        </tr>
       
       
      
            <tr>
                <td class="auto-style8" style="width: 168px"> <label> DL Type*</label></td>
                 <td class="auto-style6"> <select class="form-control" style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none"  id="dpDlType">
        <option>Overseas</option>
        <option>Learners</option>
        <option>Restricted</option>
                     <option> Full</option>
        
       
      </select>
                    
                   
</td> 
                    
                     

                <td style="width: 161px"> <label> &nbsp;&nbsp; DL No*</label></td>
                  <td> <input type="text" id="txtDlNo" placeholder="Enter DL No" class="auto-style5" /> </td>
          <td class="auto-style8" style="width: 175px"> <label> &nbsp;&nbsp;&nbsp; DL Version</label></td>
                 <td> <input type="text" id="txtDlVersion" placeholder="Enter DL Version" class="auto-style5" /> </td>
       
            </tr>

            
       <tr>
           <td colspan="6"> <h4 style="font-weight:bold" > 4. Employment Details</h4></td>
       </tr>

        
        
            <tr> 
                <td class="auto-style8" style="width: 168px"> <label> Employment Type*</label></td>
                <td class="auto-style6"> <select style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none" id="dpEmpType">
                    <option>Full Time </option>
                    <option>Part Time</option>
                    <option> Casual</option>
                    <option> Self-Employed</option>
                    <option>Seasonal </option>
                    <option>Pension </option>
                                         </select>
                    
                    </td>
                <td style="width: 161px"> <label>&nbsp;&nbsp; Occupation</label></td>
                <td> <input type="text" id="txtOccupation" placeholder="Enter Occupation" class="auto-style5" /> </td>
                 <td class="auto-style8" style="width: 175px"> <label>&nbsp;&nbsp; Company Name</label></td>
                <td> <input type="text" id="txtCompanyName" placeholder="Enter Company Name" class="auto-style5" /> </td>
                
            </tr>
            <tr>
                 <td class="auto-style8" style="width: 168px"> <label> Employment Phone No</label></td>
                <td class="auto-style6"> <input type="text" id="txtEmpPhpne" placeholder="Enter Emp Phone No" class="auto-style5" /> </td>
       
                <td style="width: 161px"> <label>&nbsp;&nbsp; Income</label></td>
                <td> <input type="text" id="txtIncome" placeholder="Enter Income" class="auto-style5" /> </td>
       
                <td class="auto-style8" style="width: 175px"> <label>&nbsp;Income Frequency*</label></td>

                <td> <select style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none" id="dpIncomeFreq">
                    <option>Weekly </option>
                    <option> Fortnightly</option>
                    <option>Monthly </option>
                     </select>
                    
                    </td>
            </tr>
            <tr>
                <td class="auto-style8" style="width: 168px"> <label> Time at Job (Years)*</label></td>
                <td class="auto-style6">
                    <select  style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none" id="dpJobTime">
                        <option> Under 2 years</option>
                        <option>3 years</option>
                        <option>4 years </option>
                        <option> 5 years</option>
                        <option> 6-10 years</option>
                        <option> More than 10 years</option>
                    </select>
                   </td>
            </tr>
               
                 <tr> <td colspan="6" >   <h4 style="font-weight:bold" > 5. Statement of Financial Position:</h4></td></tr>
                 <tr>
                     <td class="auto-style8" style="width: 168px" > <label> Cash in Bank:</label></td>
                    
                 </tr>
                 <tr> <td class="auto-style8" style="width: 168px" >  Value </td>
                     <td> <input type="text" id="txtBankValue" placeholder="Enter Value" class="auto-style5" /> </td>
       
                 </tr>
                 <tr> <td class="auto-style8" style="width: 168px" > <label> House:</label></td></tr>
                 <tr> <td class="auto-style8" style="width: 168px" >  Value </td>
                     <td> <input type="text" id="txtHouseValue" placeholder="Enter Value" class="auto-style5" /> </td>
                     <td style="width: 161px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td class="auto-style8" style="width: 175px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                  <tr> <td class="auto-style8" style="width: 168px" > <label> Vehicles:</label></td></tr>
                 <tr> <td class="auto-style8" style="width: 168px" >  Value </td>
                     <td> <input type="text" id="txtVHouseValue" placeholder="Enter Value" class="auto-style5" /> </td>
                     <td style="width: 161px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtVAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td class="auto-style8" style="width: 175px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtVRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                  <tr> <td class="auto-style8" style="width: 168px" > <label> Investments:</label></td></tr>
                 <tr> <td class="auto-style8" style="width: 168px" >  Value </td>
                     <td> <input type="text" id="txtIHouseValue" placeholder="Enter Value" class="auto-style5" /> </td>
                     <td style="width: 161px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtIAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td class="auto-style8" style="width: 175px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtIRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                  <tr> <td class="auto-style8" style="width: 168px" > <label> Others:</label></td></tr>
                 <tr> <td class="auto-style8" style="width: 168px" >  Value </td>
                     <td> <input type="text" id="txtOHouseValue" placeholder="Enter Value" class="auto-style5" /> </td>
                     <td style="width: 161px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtOAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td class="auto-style8" style="width: 175px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtORepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                 <tr> <td class="auto-style8" style="width: 168px" > <label> Hire Purchases:</label></td></tr>
                 <tr>  <td class="auto-style8" style="width: 168px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtHPAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td style="width: 161px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtHPRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                 <tr> <td class="auto-style8" style="width: 168px" > <label> Personal Loans:</label></td></tr>
                 <tr>  <td class="auto-style8" style="width: 168px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtPLAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td style="width: 161px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtPLRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    
       </tr>
                 <tr> <td class="auto-style8" style="width: 168px" > <label> Credit Cards:</label></td></tr>
                 <tr>  <td class="auto-style8" style="width: 168px"> &nbsp;&nbsp; Amount Owned:</td>
                      <td> <input type="text" id="txtCCAmountOwned" placeholder="Enter Amount Owned" class="auto-style5" /> </td>
                    <td style="width: 161px"> &nbsp;&nbsp; Weekly Payments:</td>
                      <td> <input type="text" id="txtCCRepayments" placeholder="Enter Weekly Repayments" class="auto-style5" /> </td>
                    <td class="auto-style8" style="width: 175px"> My Credit ratings</td>
                      <td class="auto-style6">
                          <select  style="background-color:#f1f1f1; width:100% ; padding: 15px; margin: 5px 0 22px 0; display: inline-block;border:none" id="dpCreditRatings">
                              <option> Good</option>
                              <option> Average</option>
                              <option> Poor</option>
                          </select>
                          </td>
       </tr>
                 <tr> <td class="auto-style8" style="width: 168px"> Notes:</td></tr>
                 <tr> <td colspan="6"> <input type="text" id="txtNote" placeholder=" Notes" class="auto-style11" /> </td>
               </tr>


        </table>

       
        

        
       
       
  
        <button ID="btnApplyFinance"  OnClick="btnApplyFinance_Click" type="submit" class="registerbtn">Submit</button>
            
             <br />
             <br />

            </div>
    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
        
    <script>
        function run() {
             document.getElementById("txtTitle").Text = document.getElementById("dpTitle").Text;
        }
    </script>
</asp:Content>
