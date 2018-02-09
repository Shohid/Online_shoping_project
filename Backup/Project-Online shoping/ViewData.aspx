<%@ Page Language="C#" MasterPageFile="~/MasterAdmin.master" AutoEventWireup="true" CodeFile="ViewData.aspx.cs" Inherits="ViewData" %>
<asp:Content ID="cont_view" runat="server" ContentPlaceHolderID="conpl_adminmaster">
    <div>
        &nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px"
            CellPadding="3" CellSpacing="2" DataKeyNames="Product_id" DataSourceID="AccessDataSource1">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Product_id" HeaderText="Product_id" ReadOnly="True" SortExpression="Product_id" />
                <asp:BoundField DataField="Product_name" HeaderText="Product_name" SortExpression="Product_name" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                <asp:BoundField DataField="Sub_Category1" HeaderText="Sub_Category1" SortExpression="Sub_Category1" />
                <asp:BoundField DataField="Big_img" HeaderText="Big_img" SortExpression="Big_img" />
                <asp:BoundField DataField="Product_info" HeaderText="Product_info" SortExpression="Product_info" />
                <asp:BoundField DataField="Quentity" HeaderText="Quentity" SortExpression="Quentity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="DesiredQuent" HeaderText="DesiredQuent" SortExpression="DesiredQuent" />
            </Columns>
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" ConflictDetection="CompareAllValues"
            DataFile="~/App_Data/shopping_master.mdb" DeleteCommand="DELETE FROM [Product_Master] WHERE [Product_id] = ? AND [Product_name] = ? AND [Brand] = ? AND [Category] = ? AND [Sub_Category1] = ? AND [Big_img] = ? AND [Product_info] = ? AND [Quentity] = ? AND [Price] = ? AND [DesiredQuent] = ?"
            InsertCommand="INSERT INTO [Product_Master] ([Product_id], [Product_name], [Brand], [Category], [Sub_Category1], [Big_img], [Product_info], [Quentity], [Price], [DesiredQuent]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
            OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product_Master]"
            UpdateCommand="UPDATE [Product_Master] SET [Product_name] = ?, [Brand] = ?, [Category] = ?, [Sub_Category1] = ?, [Big_img] = ?, [Product_info] = ?, [Quentity] = ?, [Price] = ?, [DesiredQuent] = ? WHERE [Product_id] = ? AND [Product_name] = ? AND [Brand] = ? AND [Category] = ? AND [Sub_Category1] = ? AND [Big_img] = ? AND [Product_info] = ? AND [Quentity] = ? AND [Price] = ? AND [DesiredQuent] = ?">
            <DeleteParameters>
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_Product_name" Type="String" />
                <asp:Parameter Name="original_Brand" Type="String" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Sub_Category1" Type="String" />
                <asp:Parameter Name="original_Big_img" Type="String" />
                <asp:Parameter Name="original_Product_info" Type="String" />
                <asp:Parameter Name="original_Quentity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_DesiredQuent" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Sub_Category1" Type="String" />
                <asp:Parameter Name="Big_img" Type="String" />
                <asp:Parameter Name="Product_info" Type="String" />
                <asp:Parameter Name="Quentity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="DesiredQuent" Type="Int32" />
                <asp:Parameter Name="original_Product_id" Type="Int32" />
                <asp:Parameter Name="original_Product_name" Type="String" />
                <asp:Parameter Name="original_Brand" Type="String" />
                <asp:Parameter Name="original_Category" Type="String" />
                <asp:Parameter Name="original_Sub_Category1" Type="String" />
                <asp:Parameter Name="original_Big_img" Type="String" />
                <asp:Parameter Name="original_Product_info" Type="String" />
                <asp:Parameter Name="original_Quentity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
                <asp:Parameter Name="original_DesiredQuent" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Product_id" Type="Int32" />
                <asp:Parameter Name="Product_name" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Sub_Category1" Type="String" />
                <asp:Parameter Name="Big_img" Type="String" />
                <asp:Parameter Name="Product_info" Type="String" />
                <asp:Parameter Name="Quentity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="DesiredQuent" Type="Int32" />
            </InsertParameters>
        </asp:AccessDataSource>
        <br />
        <br />
        &nbsp;&nbsp;<br />
        <br />
        <br />
    
    </div>
</asp:Content>