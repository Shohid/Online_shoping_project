<%@ Page Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="UserData.aspx.cs" Inherits="UserData" %>

<asp:Content ID="cont_userdata" runat="server" ContentPlaceHolderID="conpl_adminmaster">
<table width="800">
    <tr>
        <td >
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="AccessDataSource1"
                DataTextField="UserId" DataValueField="UserId" AutoPostBack="True">
            </asp:DropDownList><asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                SelectCommand="SELECT [UserId] FROM [Login]"></asp:AccessDataSource>
        </td>
    </tr>
    <tr>
        <td >
            <br />
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84"
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2"
                DataKeyNames="cust_id" DataSourceID="AccessDataSource2" Height="50px" Width="500px">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <Fields>
                    <asp:BoundField DataField="cust_id" HeaderText="Customer Id" ReadOnly="True" SortExpression="cust_id" />
                    <asp:BoundField DataField="Fname" HeaderText="First Name" SortExpression="Fname" />
                    <asp:BoundField DataField="Lname" HeaderText="Last Name" SortExpression="Lname" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="mobile_no" HeaderText="Mobile No." SortExpression="mobile_no" />
                    <asp:BoundField DataField="alt_email" HeaderText="Alternate E-Mail" SortExpression="alt_email" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="country" HeaderText="Country" SortExpression="country" />
                </Fields>
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            </asp:DetailsView>
            <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/shopping_master.mdb"
                SelectCommand="SELECT * FROM [customer_detail] WHERE ([cust_id] = ?)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="cust_id" PropertyName="SelectedValue"
                        Type="String" />
                </SelectParameters>
            </asp:AccessDataSource>
        </td>
    </tr>
</table>
</asp:Content>
