<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Trace="true" AutoEventWireup="true" CodeFile="Product_Qty.aspx.cs" Inherits="Product_Qty" %>

<asp:Content ID="cont_ProductQty" runat="server" ContentPlaceHolderID="conpl_master">

<table cellspacing="0" cellpadding="0">
    <tr>
        <td width="14" height="30" background="images/left.gif"></td>
        <td width="520" height="30" background="images/center.gif">
           <b> Do You Want To Proceed To Buy This Product</b></td>
        <td width="14" height="30" background="images/right.gif"></td>
    </tr>
</table>
 <table border="1" align="center" width="530" bordercolor="#ffcc33" cellspacing="0" style="border-collapse:collapse">
    <tr>
    <td>

<table id="product" runat="server" align="center">

</table>
    <br />
<table id="t1" align="center" width="500">
    <tr><td width="250"  align="right" >
        Enter Quantity :</td><td align="right">
        <asp:TextBox ID="TextBox1" runat="server" MaxLength="5">1</asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Quantity" ControlToValidate="TextBox1" ToolTip="Please Enter Quantity">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Only Digits" ControlToValidate="TextBox1" ValidationExpression="\d*">*</asp:RegularExpressionValidator></td></tr>
</table>
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="    Error On Page" />
        <br />
        &nbsp;
    
<table id="Table1" align="center" width="500">
<tr><td></td>
    <td width="350"  align="right" >
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Continue.jpg"
            OnClick="ImageButton1_Click" />
    </td>
    </tr>
</table>
</td></tr></table>

</asp:Content>
