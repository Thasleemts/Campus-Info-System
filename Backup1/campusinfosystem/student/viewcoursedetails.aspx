<%@ Page Title="" Language="C#" MasterPageFile="~/student/studentpage.Master" AutoEventWireup="true" CodeBehind="viewcoursedetails.aspx.cs" Inherits="campusinfosystem.student.viewcoursedetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="height:500px; width:800px; margin-left:100px; margin-top:80px;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataSourceID="ObjectDataSource1" BackColor="#CCCCCC" BorderColor="#999999" 
          BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" 
          ForeColor="Black" Width="609px">
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
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    SelectMethod="GetAll" TypeName="campusinfosystem.controller.coursecontroller" 
        OldValuesParameterFormatString="original_{0}">
</asp:ObjectDataSource>
</div>
  </asp:Content>
