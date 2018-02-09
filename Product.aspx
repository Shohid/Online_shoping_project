<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="Products" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Product" %>
<asp:Content ID="cont_product" runat="server" ContentPlaceHolderID="conpl_master">

<div>
<table cellspacing="0" cellpadding="0">
                <tr>
                    <td width="14" height="30" background="images/left.gif"></td>
                    <td width="520" height="30" background="images/center.gif">
                        <b> Product</b></td>
                    <td width="14" height="30" background="images/right.gif"></td>
                </tr>
                <tr>
                    <td colspan="3">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="AccessDataSource1" Width="530px" align="center" >
        <ItemTemplate>
        <table cellspacing="5" width="530" bordercolor="#ffcc33" cellpadding="0" style="border-collapse:collapse;"> 
        <tr><td>
            <table border="1" cellpadding="0" cellspacing="0" bordercolor="#ffcc33" width="530" style="border-collapse:collapse;">
                <tr>
                <td rowspan="3" valign="top" width="200" align="center">
                    <center><asp:HyperLink ID="hypl" runat="server" NavigateUrl='<%# "~/Product_info.aspx?ProductId=" + Eval("Product_id") %>'> <asp:Image ID="img" runat="server" ImageUrl='<%# "images/Big/" + Eval("Big_img") %>'   ToolTip='<%# Eval("Product_name") %>' /></asp:HyperLink><br /><font color="#333399"><asp:Label ID="PriceLabel" runat="server" Text='<%# "Price : " + Eval("Price") + " Rs." %>'></asp:Label></font></center>
                </td>
                <td valign="top" width="300" height="30"><center><b><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/Product_info.aspx?ProductId=" + Eval("Product_id") %>'><asp:Label ID="Product_nameLabel" runat="server" Text='<%# Eval("Product_name") %>' ToolTip='<%# Eval("Product_name") %>'></asp:Label></asp:HyperLink></b></center></td>
                </tr>
                <tr >
                <td valign="top" width="300" height="100"><font color="#333399"><asp:Label ID="Product_infoLabel" runat="server" Text='<%# Eval("Product_info") %>'></asp:Label></font></td>
                </tr>
                <tr>
                <td valign="bottom" align="right" height="30" width="300"><asp:HyperLink ID="hypl_cart" runat="server" NavigateUrl= <%# "~/Product_Qty.aspx?ProductId=" + Eval("Product_id") %>><asp:Image ID="img_cart" runat="server" ImageUrl="~/images/Cart.gif" ToolTip="Add To Cart"/></asp:HyperLink>
                
                </td>
                </tr>
            </table>
        
        </td></tr>
        </table>
        </ItemTemplate>
        <ItemStyle BorderColor="Orange" />
        <SeparatorStyle BorderStyle="Double" />
    </asp:DataList><asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/shopping_master.mdb"
        SelectCommand="SELECT * FROM [Product_Master] WHERE ([Brand] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Brand" QueryStringField="brand" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/shopping_master.mdb"
        SelectCommand="SELECT [Product_name], [Product_id], [Brand], [Category], [Big_img], [Product_info], [Price] FROM [Product_Master] WHERE ([Sub_Category1] = ?)">
        <SelectParameters>
            <asp:QueryStringParameter  Name="Sub_Category1" QueryStringField="subcat" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <asp:AccessDataSource ID="AccessDataSource3" runat="server" DataFile="~/App_Data/shopping_master.mdb">
           <SelectParameters>
               <asp:QueryStringParameter Name="Product_name" QueryStringField="word" Type="String" />
           </SelectParameters>
    </asp:AccessDataSource>      
   </td>
                </tr>
            </table>
            </div>

</asp:Content>
