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

public partial class Product_Qty : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    HtmlTable ht;
    HtmlTableCell tc;
    HtmlTableRow tr;
    HtmlTableCell tc1;
    HtmlTableRow tr1;
    HtmlTableCell tc2;
    HtmlTableCell tc3;


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

            int q = Convert.ToInt32(Request.QueryString["ProductId"]);
            ocd = new OleDbCommand("select * from product_master where product_id=" + q, ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            ht = new HtmlTable();
            //ht.Border = 1;
            ht.Width = "500";
            for (int i = 0; i < 3; i++)
            {
                tr = new HtmlTableRow();
                switch (i)
                {
                    case 0:
                        tc = new HtmlTableCell();

                        tc.Width = "150";
                        tc.InnerHtml = "Product Name";
                        tr.Cells.Add(tc);
                        tc3 = new HtmlTableCell();
                        tc3.InnerHtml = ":";
                        tr.Cells.Add(tc3);

                        tc2 = new HtmlTableCell();
                        tc2.InnerHtml = odr.GetString(1);
                        tr.Cells.Add(tc2);
                        break;

                    case 1:
                        tc = new HtmlTableCell();
                        tc.Width = "150";
                        tc.InnerHtml = "Brand";
                        tr.Cells.Add(tc);
                        tc3 = new HtmlTableCell();
                        tc3.InnerHtml = ":";
                        tr.Cells.Add(tc3);
                        tc2 = new HtmlTableCell();
                        tc2.InnerHtml = odr.GetString(2);
                        tr.Cells.Add(tc2);
                        break;

                    case 2:
                        tc = new HtmlTableCell();
                        tc.Width = "150";
                        tc.InnerHtml = "Price";
                        tr.Cells.Add(tc);
                        tc3 = new HtmlTableCell();
                        tc3.InnerHtml = ":";
                        tr.Cells.Add(tc3);
                        tc2 = new HtmlTableCell();
                        tc2.InnerHtml = odr[8].ToString();
                        tr.Cells.Add(tc2);
                        break;


                }
                ht.Controls.Add(tr);
            }
            tc1 = new HtmlTableCell();
            tc1.Controls.Add(ht);
            tr1 = new HtmlTableRow();
            tr1.Controls.Add(tc1);
            product.Controls.Add(tr1);
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
   
  //      Response.Redirect("Cart.aspx?orderid="+Session["orderid"].ToString()+"&ProductId="+Request.QueryString["ProductId"]+"&qnty="+TextBox1.Text);


    
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("select max(orderid) from temp", ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            if (Session["orderno"] == null)
            {
                string ss = odr[0].ToString();
                int ii = Convert.ToInt32(ss);
                ii++;
                Session["orderno"] = ii.ToString();

            }
            ocd = new OleDbCommand("select max(id) from temp", ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            string s = odr[0].ToString();
            int i = Convert.ToInt32(s);
            i++;
            ocd = new OleDbCommand("select * from product_master where product_id=" + Convert.ToInt32(Request.QueryString["ProductId"]), ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            int tot = Convert.ToInt32(TextBox1.Text) * Convert.ToInt32(odr["price"]);
            ocd = new OleDbCommand("insert into temp values('" + i + "','" + Convert.ToInt32(Session["orderno"]) + "','" + Convert.ToInt32(Request.QueryString["ProductId"]) + "','" + Convert.ToInt32(TextBox1.Text) + "','" + odr["product_name"].ToString() + "','" + tot + "')", ocn);
            ocd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            ocn.Close();
            Response.Redirect("Cart.aspx");
        }
    }
}

    

