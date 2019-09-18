<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="viewcoursedetails.aspx.cs" Inherits="campusinfosystem.student.viewcoursedetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:800px; margin-left:100px; margin-top:80px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1" BackColor="White" BorderColor="#CCCCCC" 
          BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="609px">
    <Columns>
        <asp:BoundField DataField="Courseid" HeaderText="Course Id" 
            SortExpression="Courseid" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Duration" HeaderText="Duration" 
            SortExpression="Duration" />
        <asp:BoundField DataField="Fees" HeaderText="Fees" SortExpression="Fees" />
        <asp:BoundField DataField="Eligibility" HeaderText="Eligibility" 
            SortExpression="Eligibility" />
        <asp:BoundField DataField="Totalseat" HeaderText="Totalseats" 
            SortExpression="Totalseat" />
    </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.coursecontroller" 
        OldValuesParameterFormatString="original_{0}">
</asp:ObjectDataSource>
</div>
  </asp:Content>
