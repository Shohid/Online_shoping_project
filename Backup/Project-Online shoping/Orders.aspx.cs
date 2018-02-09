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
public partial class Orders : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["AdminLogin"].ToString() != "Sucessful")
        {
            Response.Redirect("Login_Admin.aspx");
        }
        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
            //Response.Write("Connected");
            //Random r = new Random();
            //Response.Write(r.Next(10000000,99999999));
            
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("delete * from temp where orderid=" + DropDownList1.SelectedValue, ocn);
            ocd.ExecuteNonQuery();
            Response.Write("Deleted");
            DropDownList1.DataSourceID = "AccessDataSource1";
            DropDownList1.DataBind();
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
