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

public partial class MasterPage : System.Web.UI.MasterPage
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    OleDbDataReader odr1;

    TreeNode tn;
    TreeNode tn1;

    protected void Page_Load(object sender, EventArgs e)
    {



        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
            ocn.Open();
            if (Session["orderid"] == null)
            {
                
                ocd = new OleDbCommand("select max(orderid) from temp", ocn);
                odr = ocd.ExecuteReader();
                odr.Read();
                int i = Convert.ToInt32(odr[0].ToString());
                i++;
                Session["orderid"] = i;
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


        if (!IsPostBack)
        {
            try
            {
                ocn.Open();
                ocd = new OleDbCommand("select distinct(category) from Product_master", ocn);
                odr = ocd.ExecuteReader();
                if (odr.HasRows)
                {
                    while (odr.Read())
                    {
                        tn = new TreeNode();
                        tn.Text = odr.GetString(0);
                        tn.NavigateUrl = "Default.aspx";
                        ocd = new OleDbCommand("select distinct Sub_category1 from Product_master where category='" + odr.GetString(0) + "'", ocn);
                        odr1 = ocd.ExecuteReader();
                        if (odr1.HasRows)
                        {
                            while (odr1.Read())
                            {
                                tn1 = new TreeNode();
                                tn1.Text = odr1.GetString(0);
                                tn1.NavigateUrl = "Product.aspx?subcat=" + odr1.GetString(0);
                                tn.ChildNodes.Add(tn1);
                            }
                        }
                        TreeView1.Nodes.Add(tn);
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

        if (Session["orderid"] != null)
        {
            try
            {
                if (ocn.State != ConnectionState.Open)
                    ocn.Open();
                ocd = new OleDbCommand("select count(id) from temp where orderid=" + Convert.ToInt32(Session["orderid"]), ocn);
                odr = ocd.ExecuteReader();
                odr.Read();
                lbl_tot_items.Text = odr[0].ToString();

                if (Convert.ToInt32(odr[0].ToString()) > 0)
                {
                    ocd = new OleDbCommand("select sum(price) from temp where orderid=" + Convert.ToInt32(Session["orderid"]), ocn);
                    odr = ocd.ExecuteReader();
                    odr.Read();
                    lbl_tot_price.Text = odr[0].ToString() + " Rs.";
                }
                else
                {
                    lbl_tot_price.Text = " 00.0 Rs.";
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
    protected void ibtn_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Product.aspx?brand="+DropDownList1.SelectedItem.ToString());
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Product.aspx?search=search&word=" +TextBox1.Text);
    }
  
}
