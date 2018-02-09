<%@ Page Language="C#" Title="Complete Registration" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrationComplete.aspx.cs" Inherits="RegistrationComplete" %>

<asp:Content ID="cont_completereg" runat="server" ContentPlaceHolderID="conpl_master">

    <table cellspacing="0" cellpadding="0">
    <tr>
                    <td width="14" height="30" background="images/left.gif"></td>
                    <td width="520" height="30" background="images/center.gif">
                        <b> Final Conformation - Activation</b></td>
                    <td width="14" height="30" background="images/right.gif"></td>
                </tr>
    </table>
    
    <table width="500" align="center" bordercolor="#ffcc33" border="1" style="border-collapse:collapse;"><tr><td colspan="2">
        <br />
    
    <asp:Label ID="Label1" runat="server" Text="Your Account has not Activated yet <br> first Activated it by using Activation Link or Code from mail send by Us" Font-Bold="True"></asp:Label>
        <br />
        <br />
    
    </td>
    </tr>
    <tr><td>
        <strong>
        Do U Want To Resend Email :</strong></td><td><asp:Button ID="Button1" runat="server" Text="Resend Email" OnClick="Button1_Click" /></td></tr>
    <tr><td>
        <strong>
        Activation Code :</strong></td><td>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td></tr>
        
        <tr><td></td><td>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /><br />
        </td></tr>
    </table>


    



</asp:Content>


