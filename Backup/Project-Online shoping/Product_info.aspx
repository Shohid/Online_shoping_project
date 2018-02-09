<%@ Page Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Product_info.aspx.cs" Inherits="Product_info" %>

<asp:Content ID="cont_Productinfo" runat="server" ContentPlaceHolderID="conpl_master">



<table cellspacing="0">
<tr>
    <td height="30" background="images/left.gif" style="width: 14px"></td>
    <td width="520" height="30" background="images/center.gif">
        <b> Product Detail</b></td>
    <td width="14" height="30" background="images/right.gif"></td>
</tr>
<tr>
    <td colspan="3" style="height: 153px">
        <asp:FormView ID="FormView1" runat="server" DataSourceID="AccessDataSource2" align="center">
            <EditItemTemplate>
                Product_name:
                <asp:TextBox ID="Product_nameTextBox" runat="server" Text='<%# Bind("Product_name") %>'>
                </asp:TextBox><br />
                Brand:
                <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>'>
                </asp:TextBox><br />
                Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>'>
                </asp:TextBox><br />
                Big_img:
                <asp:TextBox ID="Big_imgTextBox" runat="server" Text='<%# Bind("Big_img") %>'>
                </asp:TextBox><br />
                Product_info:
                <asp:TextBox ID="Product_infoTextBox" runat="server" Text='<%# Bind("Product_info") %>'>
                </asp:TextBox><br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                    Text="Update">
                </asp:LinkButton>
                <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </EditItemTemplate>
            <InsertItemTemplate>
                Product_name:
                <asp:TextBox ID="Product_nameTextBox" runat="server" Text='<%# Bind("Product_name") %>'>
                </asp:TextBox><br />
                Brand:
                <asp:TextBox ID="BrandTextBox" runat="server" Text='<%# Bind("Brand") %>'>
                </asp:TextBox><br />
                Category:
                <asp:TextBox ID="CategoryTextBox" runat="server" Text='<%# Bind("Category") %>'>
                </asp:TextBox><br />
                Big_img:
                <asp:TextBox ID="Big_imgTextBox" runat="server" Text='<%# Bind("Big_img") %>'>
                </asp:TextBox><br />
                Product_info:
                <asp:TextBox ID="Product_infoTextBox" runat="server" Text='<%# Bind("Product_info") %>'>
                </asp:TextBox><br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>'>
                </asp:TextBox><br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                    Text="Insert">
                </asp:LinkButton>
                <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                    Text="Cancel">
                </asp:LinkButton>
            </InsertItemTemplate>
            <ItemTemplate>
            <table border="1" bordercolor="#ffcc33" cellspacing="0">
            <tr>
            <td>
            <table  align="center" width="530" border="1" bordercolor="#ffcc33" style="border-collapse:collapse;">
                <tr>
                    <td rowspan="4"><asp:Image ID="img" runat="server" ImageUrl='<%# "images/Big/" + Eval("Big_img") %>'   ToolTip='<%# Eval("Product_name") %>' /></td>
                    <td><asp:Label ID="Product_nameLabel" runat="server" Text='<%# Eval("Product_name") %>'></asp:Label></td>
                    
                </tr>
                <tr>
                    <td><asp:Label ID="PriceLabel" runat="server" Text='<%# "Price : "+ Eval("Price") +" Rs." %>'></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Product_infoLabel" runat="server" Text='<%# Eval("Product_info") %>'></asp:Label></td>
                </tr>
                <tr>
                    <td valign="bottom" align="right" width="300"><asp:HyperLink ID="hypl_cart" runat="server" NavigateUrl= '<%# "~/Product_Qty.aspx?ProductId=" + Eval("Product_id") %>'><asp:Image ID="img_cart" runat="server" ImageUrl="~/images/Cart.gif" ToolTip="Add To Cart" /></asp:HyperLink></td>
                </tr>
            </table>
            </td>
            </tr>
            </table>
            </ItemTemplate>
        </asp:FormView>
        <asp:AccessDataSource ID="AccessDataSource2" runat="server" DataFile="~/App_Data/shopping_master.mdb"
            SelectCommand="SELECT [Product_name],[Product_id], [Brand], [Category], [Big_img], [Product_info], [Price] FROM [Product_Master] WHERE ([Product_id] = ?)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Product_id" QueryStringField="ProductId" Type="Int32" />
            </SelectParameters>
        </asp:AccessDataSource>
        &nbsp;</td>
    </tr>
   </table>
      <table align="center" width="530" border="1"><tr><td>
  <div >


     <asp:Menu
         id="menuTabs"
         CssClass="menuTabs"
         StaticMenuItemStyle-CssClass="tab"
         StaticSelectedStyle-CssClass="selectedTab"
         Orientation="Horizontal"
         
         Runat="server"  Width="291px" OnMenuItemClick="menuTabs_MenuItemClick" >
         <Items>
         <asp:MenuItem
             Value="0"
             Selected="True" Text="View Details" />
         <asp:MenuItem
             Text="Customer Reviews"
             Value="1"/>
 
         </Items>
         <StaticMenuItemStyle CssClass="tab" />
         <StaticSelectedStyle CssClass="selectedTab" />
     </asp:Menu>


     <div class="tabBody">
     <asp:MultiView
         id="multiTabs"
         ActiveViewIndex="0"
         Runat="server">
         <asp:View ID="view1" runat="server" >
         
        </asp:View>
        <asp:View ID="view2" runat="server">


        Contents of second tab


        </asp:View>
    </asp:MultiView>
    </div>


    </div>
   </td></tr></table>  


</asp:Content>
