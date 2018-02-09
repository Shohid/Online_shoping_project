<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckOut.aspx.cs" Inherits="CheckOut" EnableEventValidation="false"   %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>

</head>
<body>
     <form method="post" action="https://www.paypal.com/cgi-bin/webscr" target="paypal" >
     
     
    &nbsp;
    <table width="950" align="center"  cellspacing="5" >
    <tr>
        <td  height="70" colspan="3" background="images/hadder_background.gif" valign="top">
        <table>
            <tr>
                <td height="70"><font color="Orange"> <h1>OnLine Shopping</h1></font></td>
                <td><input type="image" src="images/banner.gif" /></td>
                <td></td>
                <td></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr><td height="10" colspan="3">
    
        </td></tr>
    <tr>
        <td  colspan="3" background="images/border_silver.gif" align="right">
        <a href="Default.aspx"><font color="#333399"> Home</font></a> |
        <a href="CustomerForum.aspx"><font color="#333399"> Customer Forum</font></a> | 
        <a href="Default.aspx"><font color="#333399"> List Your Business</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Feedback</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Enquiry Us</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Terms &amp; Conditions</font></a> | 
        <a href="SiteMap.aspx"><font color="#333399"> Site Map</font></a>
        </td>
    </tr>
    <tr><td  colspan="3" valign="middle">
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em"
            PathSeparator=" : ">
            <PathSeparatorStyle Font-Bold="True" ForeColor="#990000" />
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#990000" />
            <RootNodeStyle Font-Bold="True" ForeColor="#FF8000" />
        </asp:SiteMapPath>
        <br />
        
    </td></tr>
    <tr>
        <td height="500" width="200" valign="top">
                    
            <br />
            <br />
            
        </td>
        <td height="500" width="550" valign="top">
            &nbsp;<table cellspacing="0" align="center">
                <tr>
                    <td width="14" height="30" background="images/left.gif"></td>
                    <td width="400" height="30" background="images/center.gif">
                        <strong>Fill Out This Form</strong></td>
                    <td width="14" height="30" background="images/right.gif"></td>
                </tr>
            </table>
            <table border="1" align="center" bordercolor="#ffcc33" style="border-collapse:collapse;"><tr><td>
    <table align="center">
         <tr>
            <td width="200">
                E-Mail Id</td><td>:</td><td width="200">
                     <input id="business" name="business" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                First Name</td><td>:</td><td width="200">
                    <input id="first_name" name="first_name" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                Last Name</td><td>:</td><td width="200">
                    <input id="last_name" name="last_name" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                Address 1</td><td>:</td><td width="200">
                    <input id="Text4" name="address1" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                Address 2</td><td>:</td><td width="200"><input  id="address2" name="address2"  /></td>
        </tr>
        <tr>
            <td width="200">
                City</td><td>:</td><td width="200">
                    <input name="city" type="text" /></td>
        </tr>
        <tr>
            <td width="200">
                State</td><td>:</td><td width="200">
                     <input name="state" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                Zip Code</td><td>:</td><td width="200">
                    <input  name="zip" type="text"/></td>
        </tr>
        <tr>
            <td width="200">
                Country</td><td>:</td><td width="200">
                   <input  name="country" type="text"/ value="BANGLADESH"></td>
        </tr>
                <tr><td></td><td></td><td>
                    <br />
                    <input id="Submit1" type="submit" value="submit" /></td></tr>
    </table></td></tr> </table>
     <input  name="amount" value= "" type="hidden"/>
     <input  name="quantity"  value="1000" type="hidden"/> 
     <input type="hidden" name="item_name" value="Order">
     

    <input  name="cmd" type="hidden" value="_xclick"></td>
        <td height="500" width="200" valign="top"> 
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </td>
    </tr>
    <tr>
        <td colspan="3" background="images/border_silver.gif" align="center">
        <a href="Default.aspx"><font color="#333399"> Home</font></a> |
        <a href="Default.aspx"><font color="#333399"> About Us</font></a> | 
        <a href="Default.aspx"><font color="#333399"> List Your Business</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Feedback</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Enquiry Us</font></a> | 
        <a href="Default.aspx"><font color="#333399"> Terms &amp; Conditions</font></a> | 
        <a href="SiteMap.aspx"><font color="#333399"> Site Map</font></a>
        </td>
    </tr>
    
   </table>
    </form>
</body>
</html>
