<%@ Page Title="" Language="C#" MasterPageFile="~/staff/staffpage.Master" AutoEventWireup="true" CodeBehind="StaffChat.aspx.cs" Inherits="campusinfosystem.staff.StaffChat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="height:50px; width:561px;">
        <tr>
            <td>
                Online Chat with</td>
            <td>
            <asp:DropDownList ID="drponline" runat="server" 
                DataSourceID="ObjectDataSource1" DataTextField="Username" 
                DataValueField="Username" AutoPostBack="True" 
                    onselectedindexchanged="drponline_SelectedIndexChanged" 
                    ondatabound="drponline_DataBound" Height="50px" Width="168px">
            </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                    SelectMethod="Onlineusers" 
                    TypeName="campusinfosystem.controller.logincontroller" 
                    OldValuesParameterFormatString="original_{0}">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenField1" Name="username" 
                            PropertyName="Value" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
    </table>
 <div style="height:500px; width:800px;">
        <asp:Panel ID="Panel1" runat="server" Height="616px">
            <div style="height:395px; width:400px; float:left;">
                <table class="style2">
                    <tr>
                        <td>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblmessage" runat="server" Text="Message"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtmessage" runat="server" Height="184px" TextMode="MultiLine" 
                                ValidationGroup="send" Width="316px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                ControlToValidate="txtmessage" ErrorMessage="*" ForeColor="Red" 
                                ValidationGroup="send"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:Button ID="cmbSend" runat="server" CssClass="btn" 
                                onclick="cmbSend_Click" Text="Send" ValidationGroup="send" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                            <asp:HiddenField ID="HiddenField2" runat="server" />
                        </td>
                    </tr>
                </table>
            </div>
            <div style="height:412px; width:370px; float:left;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:TextBox ID="txtMessages" runat="server" Height="365px" 
                            TextMode="MultiLine" Width="360px"></asp:TextBox>
                        <asp:Timer ID="Timer1" runat="server" Interval="6000" ontick="Timer1_Tick">
                        </asp:Timer>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </asp:Panel>
    </div>
</asp:Content>
