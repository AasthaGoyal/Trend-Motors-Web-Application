<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="EditCustomerReview.aspx.cs" Inherits="TrendMotors2.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reviewId" DataSourceID="SqlDataSource3" Height="170px" Width="810px">
        <Columns>
            <asp:BoundField DataField="reviewId" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="reviewId" />
            <asp:BoundField DataField="custName" HeaderText="Customer Name" SortExpression="custName" />
            <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" />
          

            <asp:BoundField DataField="stars" HeaderText="Stars" SortExpression="stars" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbTrendMotorsConnectionString %>" DeleteCommand="DELETE FROM [tblReviews] WHERE [reviewId] = @reviewId" InsertCommand="INSERT INTO [tblReviews] ([custName], [review], [custImage], [stars]) VALUES (@custName, @review, @custImage, @stars)" SelectCommand="SELECT * FROM [tblReviews]" UpdateCommand="UPDATE [tblReviews] SET [custName] = @custName, [review] = @review, [custImage] = @custImage, [stars] = @stars WHERE [reviewId] = @reviewId">
        <DeleteParameters>
            <asp:Parameter Name="reviewId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="custName" Type="String" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="custImage" Type="String" />
            <asp:Parameter Name="stars" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="custName" Type="String" />
            <asp:Parameter Name="review" Type="String" />
            <asp:Parameter Name="custImage" Type="String" />
            <asp:Parameter Name="stars" Type="Int32" />
            <asp:Parameter Name="reviewId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>
