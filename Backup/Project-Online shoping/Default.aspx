<%@ Page Language="C#" Title="E-Commerce Home" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="cont_default" runat="server" ContentPlaceHolderID="conpl_master">
<table cellspacing="0" align="center">
                <tr>
                    <td width="14" height="30" background="images/left.gif"></td>
                    <td width="500" height="30" align="center" background="images/center.gif">
                    <b>WelCome To Online Shopping</b></td>
                    <td width="14" height="30" background="images/right.gif"></td>
                    </table>
                    <table border="1" align="center" bordercolor="#ffcc33" style="border-collapse:collapse;"><tr><td>
<table align="center">
<tr>
<td ><a href="Default.aspx" id="iiii" runat="server">
<embed id="home" runat="server" src="HOME.swf" width="500" height="400"></embed></a>
</td>

</tr>
<tr>
    <td><br /><br />
    <table cellspacing="0" align="center">
                <tr>
                    <td width="14" height="30" background="images/left.gif"></td>
                    <td width="400" height="30" align="center" background="images/center.gif">
                    <b>Our Feature Items</b></td>
                    <td width="14" height="30" background="images/right.gif"></td>
                    </table> 
                     <table border="1" align="center" bordercolor="#ffcc33" style="border-collapse:collapse;" width="425"><tr><td>
                        <table align="center">
        <tr>
            <td>
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />
                <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/XMLFile2.xml"></asp:XmlDataSource>
            </td><td>
                <asp:AdRotator ID="AdRotator2" runat="server" DataSourceID="XmlDataSource2" />
                <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/XMLFile2.xml"></asp:XmlDataSource>
                &nbsp;
            </td>
        </tr>
    </table>
                    </td></tr>
                </table>
    
    
            
    </td>
</tr>
</table></td></tr></table>

</asp:Content>