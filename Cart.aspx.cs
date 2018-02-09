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

public partial class Cart : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;

    HyperLink h;
    
    TableCell tc;
    TableRow tr;
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
            //Response.Write("Connected");
            //Random r = new Random();
            //Response.Write(r.Next(10000000,99999999));
            ocn.Open();
            ocd = new OleDbCommand("select * from temp where orderid="+Convert.ToInt32(Session["orderid"])+"", ocn);
            odr = ocd.ExecuteReader();
            if (odr.HasRows)
            {
                while (odr.Read())
                {
                    h = new HyperLink();
                    h.Text = "Remove Item";
                    h.NavigateUrl = "Confirm.aspx?id=" + odr["id"].ToString(); ;
                    tc = new TableCell();
                    tc.Width = 100;
                    tc.Controls.Add(h);
                    tr = new TableRow();
                    tr.Controls.Add(tc);

                    tc = new TableCell();
                    tc.Width = 200;
                    tc.Text=odr["name"].ToString();
                    tr.Controls.Add(tc);
                    

                    tc = new TableCell();
                    tc.Width = 100;
                    tc.Text = odr["qty"].ToString();
                    tr.Controls.Add(tc);

                    tc = new TableCell();
                    tc.Width = 100;
                    tc.Text = odr["price"].ToString();
                    tr.Controls.Add(tc);

                    Table1.Rows.Add(tr);
                }
                
            }

            if (Session["orderno"] != null)
            {
                ocd = new OleDbCommand("select count(orderid) from temp where orderid=" + Convert.ToInt32(Session["orderno"])+"", ocn);
                odr = ocd.ExecuteReader();
                odr.Read();
                if (Convert.ToInt32(odr[0].ToString()) > 0)
                    Session["Buy"] = "Yes";
                Lbl_totitem.Text = odr[0].ToString();

                if (Convert.ToInt32(odr[0].ToString()) > 0)
                {
                    ocd = new OleDbCommand("select sum(price) from temp where orderid=" + Convert.ToInt32(Session["orderno"]) + "", ocn);
                    odr = ocd.ExecuteReader();
                    odr.Read();
                    lbl_tot_price.Text =  odr[0].ToString() + "  Rs.";

                }
                else
                {
                    lbl_tot_price.Text = "00.0  Rs.";
                }
                
                
                
            }
            
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
