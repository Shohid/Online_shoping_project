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

public partial class Product : System.Web.UI.Page
{
    OleDbConnection ocn;

    protected void Page_Load(object sender, EventArgs e)
    {
        
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
        try
        {
            //ocn.Open();
            //ocd = new OleDbCommand("select max(orderid) from temp", ocn);
            //odr = ocd.ExecuteReader();
            //odr.Read();
            //if (Session["orderid"] == null)
            //{
            //    Session["orderid"] = odr[0].ToString();
            //}

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
        finally
        {
            //ocn.Close();
        }
        

        if (Request.QueryString["brand"]!=null)
        {
            DataList1.DataSourceID = "AccessDataSource2";            
        }

        if (Request.QueryString["search"]!= null)
        {
            AccessDataSource3.SelectCommand = "SELECT * FROM Product_Master WHERE Product_name like '%" + Request.QueryString["word"] +"%'";
            DataList1.DataSourceID = "AccessDataSource3";
        }

        

    }
}
