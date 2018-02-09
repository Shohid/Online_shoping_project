using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class Product_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            FileStream fs = new FileStream(Server.MapPath("ProductDetailFiles/") + "N"+Request.QueryString["ProductId"]+".txt", FileMode.Open, FileAccess.Read, FileShare.None);
            byte[] bytetext = new byte[fs.Length];
            fs.Read(bytetext, 0, bytetext.Length);
            Label l= new Label();
            l.Text=System.Text.Encoding.ASCII.GetString(bytetext);
            view1.Controls.Add(l);
            fs.Close();
        }
        catch (Exception)
        {
            
            Label l = new Label();
            l.Text = "<b>Details not available</b>";
            view1.Controls.Add(l);
            
        }



    }
    protected void menuTabs_MenuItemClick(object sender, MenuEventArgs e)
    {
        multiTabs.ActiveViewIndex = Convert.ToInt32(menuTabs.SelectedValue);
    }
}
