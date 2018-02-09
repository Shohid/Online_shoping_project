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
using System.Data.OleDb;
public partial class Confirm : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
            ocn.Open();
            ocd = new OleDbCommand("delete * from temp where id="+Convert.ToInt32(Request.QueryString["id"])+"",ocn);
            ocd.ExecuteNonQuery();
            Response.Redirect("Cart.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            ocn.Close();
        }

    }
}
