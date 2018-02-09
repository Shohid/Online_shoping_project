<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Orders.aspx.cs" Inherits="Orders" MasterPageFile="~/MasterAdmin.master" %>

<asp:Content ID="cont_order" runat="server" ContentPlaceHolderID="conpl_adminmaster">
<table width="800">
    <tr>
        <td >
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1"
                DataTextField="orderid" DataValueField="orderid" AutoPostBack="True" Width="183px">
            </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                SelectCommand="SELECT distinct [orderid] FROM [temp]"></asp:AccessDataSource>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="AccessDataSource2" Width="500px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="orderid" HeaderText="orderid" SortExpression="orderid" />
                    <asp:BoundField DataField="productid" HeaderText="productid" SortExpression="productid" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                </Columns>
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                SelectCommand="SELECT [orderid], [productid], [name], [qty], [price] FROM [temp] WHERE ([orderid] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="orderid" PropertyName="SelectedValue"
                        Type="Int32" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
    <tr><td>
        <asp:Button ID="Button1" runat="server" Height="42px" OnClick="Button1_Click" Text="CanCal Order"
            Width="188px" />&nbsp;
    </td></tr>
</table>
</asp:Content>
