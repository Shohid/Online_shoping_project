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

public partial class SiteMap : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    OleDbDataReader odr1;

    HtmlTable ht = new HtmlTable();
    HtmlTableCell tc;
    HtmlTableCell tc1;
    HtmlTableRow tr;

    int cnt = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        tr = new HtmlTableRow();
        ht.Width = "500";
        
        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);

        }
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("select distinct(category) from Product_master", ocn);
            odr = ocd.ExecuteReader();
            if (odr.HasRows)
            {
                while (odr.Read())
                {
                    if (cnt % 2 == 0)
                        tr = new HtmlTableRow();
                    tc = new HtmlTableCell();
                    tc.VAlign = "top";
                    tc.Width = "250";
                    tc.InnerHtml = "&nbsp;&nbsp;<img src=\"images/big/6.jpg\" /><br>   ";
                    tc.InnerHtml += "<b>" + odr.GetString(0) + "</b><br>";

                    ocd = new OleDbCommand("select distinct Sub_category1 from Product_master where category='" + odr.GetString(0) + "'", ocn);
                    odr1 = ocd.ExecuteReader();
                    if (odr1.HasRows)
                    {
                        while (odr1.Read())
                        {
                            tc.InnerHtml += "&nbsp;&nbsp;&nbsp;" + odr1.GetString(0) + "<br>";
                        }
                    }
                    tr.Cells.Add(tc);
                    ht.Controls.Add(tr);
                    cnt++;
                }
            }

            tc1 = new HtmlTableCell();
            tc1.Controls.Add(ht);
            tr = new HtmlTableRow();
            tr.Controls.Add(tc1);
            t1.Controls.Add(tr);

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
