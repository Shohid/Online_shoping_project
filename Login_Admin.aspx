<%@ Page Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="Login_Admin.aspx.cs" Inherits="Login_Admin" %>

<asp:Content ID="cont_admin" runat="server" ContentPlaceHolderID="conpl_adminmaster">



<table align="center" cellspacing="0">
<tr> 
            <td height="30" background="images/left.gif" style="width: 14px"></td>
            <td width="500" height="30" background="images/center.gif"><b>Login </b></td>
            <td width="14" height="30" background="images/right.gif"></td>
        </tr>
<tr>
    <td colspan="3">
    <table border="1"  width="530" bordercolor="#ffcc33" cellspacing="0" style="border-collapse:collapse">
    <tr>
    <td >
        &nbsp;
        <br />
        <table width="500" align="center">
        <tr>
            <td>User Name</td><td>:</td><td>
                <asp:TextBox ID="txt_uname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_uname"
                    ErrorMessage="UserName Is Required">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_uname"
                    ErrorMessage="UserName Must Be Of Type a Valid E-Mail Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td>Password</td><td>:</td><td>
                <asp:TextBox ID="txt_pass" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_pass"
                    ErrorMessage="Enter PassWord" ToolTip="Enter PassWord">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td></td><td>:</td><td><input type="submit" id="submit" runat="server" value="Login"  style="width: 87px" size="20" onserverclick="submit_ServerClick" /></td>
        </tr>
        </table>
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Solid"
        BorderWidth="2px" HeaderText="Error" />
        <br />
        </td></tr></table>
    </td>
</tr>

</table>


</asp:Content>

