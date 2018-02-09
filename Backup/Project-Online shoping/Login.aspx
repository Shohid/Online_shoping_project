<%@ Page Language="C#" Title="User Login" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="cont_login" runat="server" ContentPlaceHolderID="conpl_master">

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
    <table width="500"><tr>
        <td><asp:Label ID="Label1" runat="server" Font-Bold="False" ForeColor="Red" Height="25px"
            Text="Label" Visible="False"></asp:Label>
        </td>
    </tr>
    <tr>
        <td align="right">
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Resend Email"
            Visible="False" />
        </td>
    </tr>
    </table>
        &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Solid"
        BorderWidth="2px" HeaderText="Error" />
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
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Code" Visible="False"></asp:Label></td>
                <td>
                </td>
                <td>
                    <asp:TextBox ID="txt_code" runat="server" Width="200px"></asp:TextBox></td>
            </tr>
        <tr>
            <td></td><td>:</td><td><input type="submit" id="submit" runat="server" value="Login"  style="width: 87px" size="20" onserverclick="submit_ServerClick" /></td>
        </tr>
        <tr>
            <td colspan="3" align="center"><a id="A1" href="http://www.yahoo.com" runat="server">Forgot Password</a> || <a id="A2" href="Registration.aspx" runat="server">Register Now</a></td>
        </tr>
        </table>
        </td></tr></table>
    </td>
</tr>

</table>
    <asp:TextBox ID="TextBox1" runat="server" Visible="False">&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Online Shopping&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;table width=&quot;800&quot; align=&quot;center&quot; border=&quot;1&quot; bordercolor=&quot;#ffcc33&quot; style=&quot;border-collapse:collapse;&quot;&gt;
        &lt;tr&gt;
            &lt;td colspan=&quot;3&quot; height=&quot;70&quot; background=&quot;http://www.imgspace.info/images/2Gp59067.gif&quot; align=&quot;center&quot;&gt;&lt;font color=&quot;MediumBlue&quot;&gt; &lt;h2&gt;Wel Come To Online Shopping&lt;/h2&gt;Every Thing Is Available Here&lt;/font&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;&lt;td colspan=&quot;3&quot;&gt;
        &lt;table cellspacing=&quot;0&quot;&gt;
                    &lt;tr&gt;
                        &lt;td width=&quot;14&quot; height=&quot;30&quot; background=&quot;http://www.imgspace.info/images/K8H59309.gif&quot;&gt;&lt;/td&gt;&lt;td width=&quot;762&quot; background=&quot;http://www.imgspace.info/images/e4x59356.gif&quot; align=&quot;center&quot;&gt;&lt;b&gt;Your Account Needs Final Conformation&lt;/b&gt;&lt;/td&gt;&lt;td width=&quot;14&quot; background=&quot;http://www.imgspace.info/images/sih59431.gif&quot;&gt;&lt;/td&gt;
                    &lt;/tr&gt;
                    
                &lt;/table&gt;
        &lt;/td&gt;&lt;/tr&gt;
        &lt;tr&gt;
            &lt;td height=&quot;500&quot; valign=&quot;top&quot; width=&quot;150&quot;&gt;
            &lt;table &gt;
                &lt;tr&gt;
                    &lt;td&gt; &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/l1.jpg&quot;/&gt;
                    &lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td align=&quot;center&quot;&gt;&lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/l2.jpg&quot; /&gt;
                    &lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td&gt; &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/l3.jpg&quot; /&gt;
                    &lt;/td&gt;
                &lt;/tr&gt;
            &lt;/table&gt;
            &lt;/td&gt;
            &lt;td valign=&quot;top&quot; width=&quot;400&quot;&gt;
            &lt;table&gt;
                &lt;tr&gt;
                    &lt;td style=&quot;height: 156px; width: 414px;&quot;&gt; Shopping Cart&lt;br /&gt;
                        &lt;/strong&gt;
                        &lt;/span&gt;
                        &lt;br /&gt;
</asp:TextBox><asp:TextBox ID="TextBox2" runat="server" Visible="False">&lt;br /&gt;
                        
                    &lt;/td&gt;
                &lt;/tr&gt;
                &lt;tr&gt;
                    &lt;td valign=&quot;bottom&quot; style=&quot;width: 414px&quot; align=&quot;center&quot;&gt;
                        &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/middle.jpg&quot;  /&gt;
                    &lt;/td&gt;
                &lt;/tr&gt;
            &lt;/table&gt;
            
            &lt;/td&gt;
            &lt;td valign=&quot;top&quot; width=&quot;150&quot;&gt;&lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/r1.jpg&quot; /&gt;&lt;br /&gt;
                &lt;br /&gt;
                &lt;br /&gt;
                &lt;br /&gt;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/r2.jpg&quot; /&gt;&lt;br /&gt;
                &lt;br /&gt;
                &lt;br /&gt;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/r3.jpg&quot; /&gt;&lt;br /&gt;
            &lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
            &lt;td colspan=&quot;3&quot; height=&quot;100&quot; align=&quot;center&quot;&gt;
                &amp;nbsp;&lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo1.gif&quot; /&gt;&lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo2.gif&quot; /&gt;&amp;nbsp;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo3.gif&quot; /&gt;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo4.gif&quot; /&gt;&amp;nbsp;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo5.gif&quot; /&gt;&amp;nbsp;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo6.gif&quot; /&gt;
                &lt;input type=&quot;image&quot; src=&quot;http://students.rpmiit.org/php_intro/batch_8/amit_zala/lo7.gif&quot; /&gt;
                &lt;/td&gt;
        &lt;/tr&gt;
    &lt;/table&gt;
&lt;/body&gt;
&lt;/html&gt;
</asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Visible="False"></asp:TextBox><br />
    <br />
    <asp:Table ID="Table1" runat="server">
    </asp:Table>



</asp:Content>
