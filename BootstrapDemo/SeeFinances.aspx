<%@ Page Title="" Language="C#" MasterPageFile="~/EmployeeAccess.Master" AutoEventWireup="true" CodeBehind="SeeFinances.aspx.cs" Inherits="BootstrapDemo.WebForm16" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="StyleSheets/WrapContents.css" rel="stylesheet" />
	<div class="container" id="wrap">
	<h1 style="font-size: xx-large; font-family: Calibri; font-weight: bold; color: #FF0000"> All Finance Applications:</h1>
	
		<hr >
		<br />

        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                title:
                <asp:Label ID="titleLabel" runat="server" Text='<%# Eval("title") %>' />
                <br />
                firstName:
                <asp:Label ID="firstNameLabel" runat="server" Text='<%# Eval("firstName") %>' />
                <br />
                lastName:
                <asp:Label ID="lastNameLabel" runat="server" Text='<%# Eval("lastName") %>' />
                <br />
                dateOfBirth:
                <asp:Label ID="dateOfBirthLabel" runat="server" Text='<%# Eval("dateOfBirth") %>' />
                <br />
                maritalStatus:
                <asp:Label ID="maritalStatusLabel" runat="server" Text='<%# Eval("maritalStatus") %>' />
                <br />
                noOfDependants:
                <asp:Label ID="noOfDependantsLabel" runat="server" Text='<%# Eval("noOfDependants") %>' />
                <br />
                currentStatus:
                <asp:Label ID="currentStatusLabel" runat="server" Text='<%# Eval("currentStatus") %>' />
                <br />
                phoneNo:
                <asp:Label ID="phoneNoLabel" runat="server" Text='<%# Eval("phoneNo") %>' />
                <br />
                emailId:
                <asp:Label ID="emailIdLabel" runat="server" Text='<%# Eval("emailId") %>' />
                <br />
                livingSituation:
                <asp:Label ID="livingSituationLabel" runat="server" Text='<%# Eval("livingSituation") %>' />
                <br />
                streetAddress:
                <asp:Label ID="streetAddressLabel" runat="server" Text='<%# Eval("streetAddress") %>' />
                <br />
                suburb:
                <asp:Label ID="suburbLabel" runat="server" Text='<%# Eval("suburb") %>' />
                <br />
                city:
                <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                <br />
                postcode:
                <asp:Label ID="postcodeLabel" runat="server" Text='<%# Eval("postcode") %>' />
                <br />
                timeAtAddress:
                <asp:Label ID="timeAtAddressLabel" runat="server" Text='<%# Eval("timeAtAddress") %>' />
                <br />
                rentPayment:
                <asp:Label ID="rentPaymentLabel" runat="server" Text='<%# Eval("rentPayment") %>' />
                <br />
                paymentFrequency:
                <asp:Label ID="paymentFrequencyLabel" runat="server" Text='<%# Eval("paymentFrequency") %>' />
                <br />
                dlType:
                <asp:Label ID="dlTypeLabel" runat="server" Text='<%# Eval("dlType") %>' />
                <br />
                dlNumber:
                <asp:Label ID="dlNumberLabel" runat="server" Text='<%# Eval("dlNumber") %>' />
                <br />
                dlVersion:
                <asp:Label ID="dlVersionLabel" runat="server" Text='<%# Eval("dlVersion") %>' />
                <br />
                employmentType:
                <asp:Label ID="employmentTypeLabel" runat="server" Text='<%# Eval("employmentType") %>' />
                <br />
                occupation:
                <asp:Label ID="occupationLabel" runat="server" Text='<%# Eval("occupation") %>' />
                <br />
                companyName:
                <asp:Label ID="companyNameLabel" runat="server" Text='<%# Eval("companyName") %>' />
                <br />
                empPhoneNo:
                <asp:Label ID="empPhoneNoLabel" runat="server" Text='<%# Eval("empPhoneNo") %>' />
                <br />
                income:
                <asp:Label ID="incomeLabel" runat="server" Text='<%# Eval("income") %>' />
                <br />
                incomeFreq:
                <asp:Label ID="incomeFreqLabel" runat="server" Text='<%# Eval("incomeFreq") %>' />
                <br />
                timeAtJob:
                <asp:Label ID="timeAtJobLabel" runat="server" Text='<%# Eval("timeAtJob") %>' />
                <br />
                cashInBank:
                <asp:Label ID="cashInBankLabel" runat="server" Text='<%# Eval("cashInBank") %>' />
                <br />
                houseValue:
                <asp:Label ID="houseValueLabel" runat="server" Text='<%# Eval("houseValue") %>' />
                <br />
                hamountOwned:
                <asp:Label ID="hamountOwnedLabel" runat="server" Text='<%# Eval("hamountOwned") %>' />
                <br />
                hweeklyPayments:
                <asp:Label ID="hweeklyPaymentsLabel" runat="server" Text='<%# Eval("hweeklyPayments") %>' />
                <br />
                vehicleValue:
                <asp:Label ID="vehicleValueLabel" runat="server" Text='<%# Eval("vehicleValue") %>' />
                <br />
                vamountOwned:
                <asp:Label ID="vamountOwnedLabel" runat="server" Text='<%# Eval("vamountOwned") %>' />
                <br />
                vweeklyPayments:
                <asp:Label ID="vweeklyPaymentsLabel" runat="server" Text='<%# Eval("vweeklyPayments") %>' />
                <br />
                investmentValue:
                <asp:Label ID="investmentValueLabel" runat="server" Text='<%# Eval("investmentValue") %>' />
                <br />
                iamountOwned:
                <asp:Label ID="iamountOwnedLabel" runat="server" Text='<%# Eval("iamountOwned") %>' />
                <br />
                iweeklyPayments:
                <asp:Label ID="iweeklyPaymentsLabel" runat="server" Text='<%# Eval("iweeklyPayments") %>' />
                <br />
                otherValue:
                <asp:Label ID="otherValueLabel" runat="server" Text='<%# Eval("otherValue") %>' />
                <br />
                oamountOwned:
                <asp:Label ID="oamountOwnedLabel" runat="server" Text='<%# Eval("oamountOwned") %>' />
                <br />
                oweeklyPayments:
                <asp:Label ID="oweeklyPaymentsLabel" runat="server" Text='<%# Eval("oweeklyPayments") %>' />
                <br />
                hpamountOwned:
                <asp:Label ID="hpamountOwnedLabel" runat="server" Text='<%# Eval("hpamountOwned") %>' />
                <br />
                hpweeklyPayments:
                <asp:Label ID="hpweeklyPaymentsLabel" runat="server" Text='<%# Eval("hpweeklyPayments") %>' />
                <br />
                plamountOwned:
                <asp:Label ID="plamountOwnedLabel" runat="server" Text='<%# Eval("plamountOwned") %>' />
                <br />
                plweeklyPayments:
                <asp:Label ID="plweeklyPaymentsLabel" runat="server" Text='<%# Eval("plweeklyPayments") %>' />
                <br />
                ccamountOwned:
                <asp:Label ID="ccamountOwnedLabel" runat="server" Text='<%# Eval("ccamountOwned") %>' />
                <br />
                ccweeklyPayments:
                <asp:Label ID="ccweeklyPaymentsLabel" runat="server" Text='<%# Eval("ccweeklyPayments") %>' />
                <br />
                creditRatings:
                <asp:Label ID="creditRatingsLabel" runat="server" Text='<%# Eval("creditRatings") %>' />
                <br />
                notes:
                <asp:Label ID="notesLabel" runat="server" Text='<%# Eval("notes") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCardealerConnectionString %>" SelectCommand="SELECT * FROM [tblFinance]"></asp:SqlDataSource>
		  </div>
</asp:Content>
