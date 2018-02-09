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
using System.Net;
using System.Net.Mail;
using System.Data.OleDb;

public partial class BulkEmail : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    MailMessage mm;
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
            SmtpClient sq = new SmtpClient();
            
            sq.EnableSsl = true;
            sq.Host = "smtp.gmail.com";
            sq.Port = 25;

            sq.Credentials = new NetworkCredential("malamallmall", "ecommerce");
            sq.Timeout = 999999;

            MailAddress ma = new MailAddress("princeshohid@gmail.com", "Rajkot Online Shopping");
            ocd = new OleDbCommand("select userid from login", ocn);
            odr = ocd.ExecuteReader();
            if (odr.HasRows)
            {
                while (odr.Read())
                {
                    mm = new MailMessage();
                    mm.From = ma;
                    mm.Subject = "Online Shopping";
                    mm.To.Clear();
                    mm.To.Add(odr["userid"].ToString());
                    mm.Body = TextBox1.Text + TextBox2.Text + TextBox3.Text;
                    mm.IsBodyHtml = true;
                    sq.Send(mm);
                    Response.Write("Sent sucessfully");
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

