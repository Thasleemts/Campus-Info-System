<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="sturegistration.aspx.cs" Inherits="campusinfosystem.sturegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="height:500px; width:800px; margin-top:80px; ">
	
    <table style="height:600px; width:800px; margin-left:100px;">
        <tr>
            <td>
                <asp:Label ID="lblfnm" runat="server" BorderColor="#336699" Text="First Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfnm" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lbllstnm" runat="server"  Text="Last Name:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtlnm" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblgndr" runat="server"  Text="Gender:"></asp:Label>
            </td>
            <td>
                <asp:RadioButtonList ID="rdbgnder" runat="server"  
                    RepeatDirection="Horizontal" CssClass="textbox">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:Label ID="lbldob" runat="server"  
                    Text="Date Of Birth:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtdob" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblemil" runat="server"  Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblmob" runat="server" Text="Mobile:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbladdrs" runat="server"  Text="Address:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtaddress" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblplc" runat="server"  Text="Place"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtplc" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcity" runat="server"  Text="City:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcity" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblstat" runat="server"  Text="State:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstat" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
<tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcoutr" runat="server"  Text="Country:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcoutr" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="lblpin" runat="server"  Text="Pin:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpin" runat="server" CssClass="textbox"></asp:TextBox>
            </td>
<tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblcourse" runat="server"  Text="Course:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="ObjectDataSource2" DataTextField="Name" 
                    DataValueField="Name" ondatabound="DropDownList2_DataBound" 
                    CssClass="textbox">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Label ID="lblbatchid" runat="server"  
                    Text="Batch ID:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="ObjectDataSource1" DataTextField="Batch" DataValueField="Batchid" 
                    ondatabound="DropDownList1_DataBound" CssClass="textbox">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>

            <td>
                <asp:Label ID="lblusrnm" runat="server"  Text="UserName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtusrnm" runat="server" CssClass="textbox" ></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblpsw" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtpsw" runat="server" CssClass="textbox" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                Confirm Password:</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" CssClass="textbox" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="GetAll" TypeName="campusinfosystem.controller.batchcontroller">
                </asp:ObjectDataSource>
            </td>
            <td>
                &nbsp;</td>
            <td>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                    SelectMethod="GetAll" 
                    TypeName="campusinfosystem.controller.coursecontroller" 
                    OldValuesParameterFormatString="original_{0}">
                </asp:ObjectDataSource>
            </td>
        </tr>
   
       
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click1" 
                     Text="Submit" CssClass="btn" />
            </td>
        </tr>
        </table>
    </div>
</asp:Content>
