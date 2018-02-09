<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="cont_cart" runat="server" ContentPlaceHolderID="conpl_master">
<table  cellspacing="0" align="center">
        <tr> 
            <td height="30" background="images/left.gif" style="width: 14px"></td>
            <td width="500" height="30" background="images/center.gif"><b>Cart</b></td>
            <td width="14" height="30" background="images/right.gif"></td>
        </tr>
</table>
<table width="530">
    <tr>
        <td colspan="2">
            <table align="center"><tr><td >
            
                <asp:Table ID="Table1" runat="server" BorderWidth="1" BorderColor="#ffcc33" CellSpacing="0">
                <asp:TableRow>
                <asp:TableHeaderCell Width="100" BorderWidth="1" HorizontalAlign="Left">Remove Item</asp:TableHeaderCell>
                <asp:TableHeaderCell Width="200"  BorderWidth="1" HorizontalAlign="Left">Product Name</asp:TableHeaderCell>
                <asp:TableHeaderCell Width="100"  BorderWidth="1" HorizontalAlign="Left">Quentity</asp:TableHeaderCell>
                <asp:TableHeaderCell Width="100"  BorderWidth="1" HorizontalAlign="Left">Price</asp:TableHeaderCell>
                </asp:TableRow>
                </asp:Table>
            
            </td></tr>
            <tr><td align="right">
                <br />
                <table><tr><td style="width: 100px">
                    <strong>Total Items :&nbsp; </strong></td><td width="100" align="left">
                <asp:Label ID="Lbl_totitem" runat="server" Text=""></asp:Label></td></tr></table></td></tr>
            <tr><td align="right">
                <br />
                <table><tr><td width="100">
                    <strong>Total Price&nbsp; :&nbsp; </strong></td><td width="100" align="left">
                <asp:Label ID="lbl_tot_price" runat="server"></asp:Label></td></tr></table></td></tr>
                
            </table>
        </td>
    </tr>
    <tr>
        <td></td>
        
        <td>
            <asp:HyperLink ID="hypl"  runat="server" NavigateUrl="~/login.aspx"> <asp:Image ID="im" runat="server" ImageUrl="~/images/CheckOut.jpg" /></asp:HyperLink>
        </td>
    </tr>
    
</table>

</asp:Content>
