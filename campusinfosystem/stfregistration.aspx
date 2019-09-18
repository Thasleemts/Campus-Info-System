<%@ Page Title="" Language="C#" MasterPageFile="~/registrationmaster.Master" AutoEventWireup="true" CodeBehind="stfregistration.aspx.cs" Inherits="campusinfosystem.stfregistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div style="height:500px; width:800px; margin-top:50px; ">
	
  <h1>Create an account now </h1>
        <table width="100%" border="0" style="font-size:15px;">
  <tr>
    <td style="width:200px;">First Name</td>
    <td style="width:200px;">Last Name</td>
    <td>Gender</td>
    </tr>
  <tr>
     <td>
         <asp:TextBox ID="txtfnam" runat="server" CssClass="textbox"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
             ControlToValidate="txtfnam" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtlnam" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
            ControlToValidate="txtlnam" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td width="11%">
        
        <asp:RadioButtonList ID="rdbgndr" runat="server" AutoPostBack="True" 
                    RepeatDirection="Horizontal" CssClass="textbox">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
        
      </td>
    </tr>
 
  
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    </tr>

  <tr>
    <td>Address </td>
    <td>Pin Code</td>
    <td>Place</td>
  </tr>
  <tr>
    <td>
        <asp:TextBox ID="txtaddr" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="txtaddr" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtpin" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
            ControlToValidate="txtpin" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtplc" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
            ControlToValidate="txtplc" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>City</td>
    <td>State</td>
    <td>Country</td>
    </tr>
  <tr>
    <td>
        <asp:TextBox ID="txtcity" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="txtcity" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtstate" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
            ControlToValidate="txtstate" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtcountry" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
            ControlToValidate="txtcountry" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
      <tr>
    <td>Mobile Number</td>
    <td>Email Id</td>
    <td>Date Of Birth</td>
    </tr>
    <tr>
    <td>
        <asp:TextBox ID="txtmob" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="txtmob" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ControlToValidate="txtmob" Display="Dynamic" ErrorMessage="*" ForeColor="Red" 
            ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
      </td>
    <td>
        <asp:TextBox ID="txtemail" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
            ControlToValidate="txtemail" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtdob" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
            ControlToValidate="txtdob" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    </tr>

  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>

   <tr>
    <td>Experience</td>
    <td>Departmanet</td>
    <td>&nbsp;</td>
    </tr>
  <tr>
    <td>
        <asp:TextBox ID="txtexp" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtexp" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtDepaerment" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
            ControlToValidate="txtDepaerment" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
         <tr>
    <td>User Name</td>
    <td>Password</td>
    <td>Confirm Password</td>
    </tr>
    <tr>
    <td>
        <asp:TextBox ID="txtusername" runat="server" CssClass="textbox"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
            ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtpassword" runat="server" CssClass="textbox" 
            TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
            ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
      </td>
    <td>
        <asp:TextBox ID="txtconfirm" runat="server" CssClass="textbox" 
            TextMode="Password"></asp:TextBox>
      </td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
            ControlToValidate="txtconfirm" Display="Dynamic" ErrorMessage="*" 
            ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtpassword" ControlToValidate="txtconfirm" Display="Dynamic" 
            ErrorMessage="*" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
  <tr>
    <td>&nbsp;</td>
    <td>
        <asp:Label ID="lblxixst" runat="server" ForeColor="Red"></asp:Label>
      </td>
    <td>
          <asp:Button ID="cmdsubmit" runat="server" onclick="cmdsubmit_Click" 
                    Text="Create Account" CssClass="btn" />
      </td>
  </tr>

</table>
</div>
</asp:Content>
