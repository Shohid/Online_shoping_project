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
public partial class InsertData : System.Web.UI.Page
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
            ocd = new OleDbCommand("insert into product_master values('" + Convert.ToInt32(TextBox1.Text) + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + FileUpload1.FileName.ToString() + "','" + TextBox6.Text + "','" + Convert.ToInt32(TextBox7.Text) + "','" + Convert.ToInt32(TextBox9.Text) + "','" + Convert.ToInt32(TextBox8.Text) + "')", ocn);
           ocd.ExecuteNonQuery();
         FileUpload1.SaveAs(Server.MapPath("images/Big/") + FileUpload1.FileName);
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
        finally
        {
            ocn.Close();
        }

    }
}
