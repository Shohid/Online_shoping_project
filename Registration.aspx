<%@ Page Language="C#" Title="Registration" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="cont_registration" runat="server" ContentPlaceHolderID="conpl_master">

    <table  cellspacing="0" align="center">
        <tr> 
            <td height="30" background="images/left.gif" style="width: 14px"></td>
            <td width="500" height="30" background="images/center.gif"><b>Login Detail</b></td>
            <td width="14" height="30" background="images/right.gif"></td>
        </tr>
    <tr>
    
        <td colspan="3" >
        <table border="1" align="center" width="530" bordercolor="#ffcc33" cellspacing="0" style="border-collapse:collapse">
    <tr>
    <td>
        <table width="500" >
        <tr>
            <td>Username (EmailID)</td><td>:</td><td>
                <asp:TextBox ID="txt_uname" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_uname"
                    ErrorMessage="Invalid Email Id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_uname"
                    ErrorMessage="UserName ( E-MailId)  Is Required" ToolTip="UserName ( E-MailId)  Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Password</td><td>:</td><td>
                <asp:TextBox ID="txt_pass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_repass"
                    ControlToValidate="txt_pass" ErrorMessage="Password Mismatch">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txt_pass"
                    ErrorMessage="Password Is Required" ToolTip="Password Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Retype Password</td><td>:</td><td>
                <asp:TextBox ID="txt_repass" runat="server" TextMode="Password" Width="200px"></asp:TextBox></td>
        </tr>
        </table>
        </td></tr></table>
        </td>
    </tr>
    </table><br />
    <table width="530" runat="server" align="center">
    <tr><td>
    
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" BorderStyle="Solid"
        BorderWidth="2px" HeaderText="Error" Width="530px" />
        <br /><center>
        <asp:Label ID="lbl" runat="server" BorderColor="Red" BorderStyle="Solid" BorderWidth="2px" ForeColor="Red" Height="30px" Visible="False" Width="500px"></asp:Label></center>
    </td></tr>
    </table>
    <br />
    <table  cellspacing="0" align="center">
    <tr>
            <td width="14" background="images/left.gif" style="height: 30px"></td>
            <td width="500" background="images/center.gif" style="height: 30px"><b>Personal Detail</b></td>
            <td width="14" background="images/right.gif" style="height: 30px"></td>
        </tr>
    <tr>
    <td colspan="3">
    <table border="1" width="530" align="center" bordercolor="#ffcc33" cellspacing="0" style="border-collapse:collapse">
    <tr>
    <td>
   
        <table width="500">
        <tr>
            <td>
                First Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            </td><td>:</td><td>
                <asp:TextBox ID="txt_fname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_fname"
                    ErrorMessage="First Name Is Required" ToolTip="First Name Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>
                Last Name &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;
            </td><td>:</td><td>
                <asp:TextBox ID="txt_lname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_lname"
                    ErrorMessage="Last Name Is Required" ToolTip="Last Name Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>BirthDate</td><td>:</td><td>
                <select id="ddlDay" class="textboxcss" name="ddlDay">
                    <option selected="selected" value="-99">Day</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <option value="13">13</option>
                    <option value="14">14</option>
                    <option value="15">15</option>
                    <option value="16">16</option>
                    <option value="17">17</option>
                    <option value="18">18</option>
                    <option value="19">19</option>
                    <option value="20">20</option>
                    <option value="21">21</option>
                    <option value="22">22</option>
                    <option value="23">23</option>
                    <option value="24">24</option>
                    <option value="25">25</option>
                    <option value="26">26</option>
                    <option value="27">27</option>
                    <option value="28">28</option>
                    <option value="29">29</option>
                    <option value="30">30</option>
                    <option value="31">31</option>
                </select>
                &nbsp;
                <select id="ddlMonth" class="textboxcss" name="ddlMonth">
                    <option selected="selected" value="-99">Month</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                </select>
                &nbsp;
                <select id="ddlyear" class="textboxcss" name="ddlyear">
                    <option selected="selected" value="-99">Year</option>
                    <option value="1995">1995</option>
                    <option value="1994">1994</option>
                    <option value="1993">1993</option>
                    <option value="1992">1992</option>
                    <option value="1991">1991</option>
                    <option value="1990">1990</option>
                    <option value="1989">1989</option>
                    <option value="1988">1988</option>
                    <option value="1987">1987</option>
                    <option value="1986">1986</option>
                    <option value="1985">1985</option>
                    <option value="1984">1984</option>
                    <option value="1983">1983</option>
                    <option value="1982">1982</option>
                    <option value="1981">1981</option>
                    <option value="1980">1980</option>
                    <option value="1979">1979</option>
                    <option value="1978">1978</option>
                    <option value="1977">1977</option>
                    <option value="1976">1976</option>
                    <option value="1975">1975</option>
                    <option value="1974">1974</option>
                    <option value="1973">1973</option>
                    <option value="1972">1972</option>
                    <option value="1971">1971</option>
                    <option value="1970">1970</option>
                    <option value="1969">1969</option>
                    <option value="1968">1968</option>
                    <option value="1967">1967</option>
                    <option value="1966">1966</option>
                    <option value="1965">1965</option>
                    <option value="1964">1964</option>
                    <option value="1963">1963</option>
                    <option value="1962">1962</option>
                    <option value="1961">1961</option>
                    <option value="1960">1960</option>
                    <option value="1959">1959</option>
                    <option value="1958">1958</option>
                    <option value="1957">1957</option>
                    <option value="1956">1956</option>
                    <option value="1955">1955</option>
                    <option value="1954">1954</option>
                    <option value="1953">1953</option>
                    <option value="1952">1952</option>
                    <option value="1951">1951</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>Sex</td><td>:</td><td>
                <select id="ddlSex" class="textboxcss" name="ddlSex">
                    <option value="M">Male</option>
                    <option value="F" selected="selected">Female</option>
                </select>
                &nbsp;</td>
        </tr>
        <tr>
            <td>Address</td><td>:</td><td>
                <asp:TextBox ID="txt_add" runat="server" Rows="4" TextMode="MultiLine" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txt_add"
                    ErrorMessage="Address Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>City</td><td>:</td><td>
                <asp:TextBox ID="txt_city" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="City Is Required"
                    ToolTip="City Is Required" ControlToValidate="txt_city">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>State</td><td>:</td><td>
                <asp:TextBox ID="Txt_state" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="State Is Required"
                    ToolTip="State Is Required" ControlToValidate="Txt_state">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Country</td><td>:</td><td>
                <asp:TextBox ID="txt_country" runat="server" Width="200px" ReadOnly="True">INDIA</asp:TextBox></td>
        </tr>
        <tr>
            <td>Phone</td><td>:</td><td>
                <asp:TextBox ID="txt_ph" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Mobile</td><td>:</td><td>
                <asp:TextBox ID="txt_mo" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_mo"
                    ErrorMessage="Invaild Mobile No." ToolTip="Invaild Mobile No." ValidationExpression="^[0-9]{10}">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_mo"
                    ErrorMessage="Mobile No. Is Required" ToolTip="Mobile No. Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Alternate Email </td><td>:</td><td>
                <asp:TextBox ID="txt_altemail" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Alternate E-Mail Is Required"
                    ToolTip="Alternate E-Mail Is Required" ControlToValidate="txt_altemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_altemail"
                    ErrorMessage="Alternate E-Mail Is Required" ToolTip="Alternate E-Mail Is Required">*</asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>WebSite</td><td>:</td><td>
                <asp:TextBox ID="txt_website" runat="server" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Blood Group</td><td>:</td><td>
                <select id="ddlBloodGroup" class="textboxcss" name="ddlBloodGroup">
                    <option selected="selected" value="-99">Select</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </td>
        </tr>
        <tr>
            <td style="height: 21px">Occupation</td><td style="height: 21px">:</td><td style="height: 21px">
                <asp:TextBox ID="txt_occupation" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Note</td><td>:</td><td>
                <asp:TextBox ID="txt_note" runat="server" Rows="4" TextMode="MultiLine" Width="200px"></asp:TextBox></td>
        </tr>
        <tr>
            <td></td><td></td><td>
                <br />
                <asp:Button ID="bt_submit" runat="server" Text="Submit" Width="123px" OnClick="bt_submit_Click" /></td>
        </tr>
        </table>
         </td>
    </tr>
    </table>
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
                    &lt;td style=&quot;height: 156px; width: 414px;&quot;&gt;&lt;font  size=&quot;5&quot;&gt; &lt;span style=&quot;color: black&quot;&gt;&lt;strong&gt;Your account has been created sucessfully&lt;br /&gt;
                        &lt;/strong&gt;
                        &lt;/span&gt;
                        &lt;br /&gt;
</asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server" Visible="False">&lt;br /&gt;
                        &lt;/font&gt;
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

</asp:Content>
