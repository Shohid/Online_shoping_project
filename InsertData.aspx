<%@ Page Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="InsertData.aspx.cs" Inherits="InsertData" %>
<asp:Content ID="cont_ins" runat="server" ContentPlaceHolderID="conpl_adminmaster">

    <table align="center">
    <tr>
        <td width="200">
            Product Id</td><td>:</td><td >
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="AccessDataSource4"
                    DataTextField="Expr1" DataValueField="Expr1">
                </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource4" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                    SelectCommand="SELECT max(Product_id) AS Expr1 FROM Product_Master"></asp:AccessDataSource>
            </td>
    </tr>
    <tr>
        <td>
            Product Name</td><td>:</td><td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            Brand</td><td>:</td><td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1"
                    DataTextField="Brand" DataValueField="Brand">
                </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                    SelectCommand="SELECT distinct[Brand] FROM [Product_Master]"></asp:AccessDataSource>
            </td>
    </tr>
    <tr>
        <td>
            Category</td><td>:</td><td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="AccessDataSource2"
                    DataTextField="Category" DataValueField="Category">
                </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                    SelectCommand="SELECT distinct[Category] FROM [Product_Master]"></asp:AccessDataSource>
            </td>
    </tr>
    <tr>
        <td>
            Sub Category</td><td>:</td><td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                &nbsp; &nbsp; &nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="AccessDataSource3"
                    DataTextField="Sub_Category1" DataValueField="Sub_Category1">
                </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                    SelectCommand="SELECT distinct[Sub_Category1] FROM [Product_Master]"></asp:AccessDataSource>
                &nbsp;
            </td>
    </tr>
    <tr>
        <td>
            Image</td><td>:</td><td>
                <br />
            <asp:FileUpload ID="FileUpload1" runat="server" /><br />
            </td>
    </tr>
    <tr>
        <td>
            Product Info</td><td>:</td><td>
            <asp:TextBox ID="TextBox6" runat="server" Columns="50" Rows="5" TextMode="MultiLine"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            Quentety</td><td>:</td><td>
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            Desired Quenty</td><td>:</td><td>
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td>
            Price</td><td>:</td><td>
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
        <td></td><td>:</td><td></td>
    </tr>
    <tr>
        <td></td><td>:</td><td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="172px" /></td>
    </tr>
    
    
    </table>
    </asp:Content>
 