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
using System.Net;
using System.Net.Mail;
public partial class RegistrationComplete : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    bool flag = false;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string cnstr = Server.MapPath("App_Data/") + "shopping_master.mdb";
            ocn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + cnstr + "");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("select * from login", ocn);
            odr = ocd.ExecuteReader();
            if (odr.HasRows)
            {
                while (odr.Read())
                {
                    if (Request.QueryString["uname"] == odr.GetString(0) && TextBox1.Text == odr.GetString(2))
                    {
                        flag = true;
                       // Label1.Text = "Completed Sucessfully";
                        ocd = new OleDbCommand("update login set Conformed='Yes' where UserId='" + Request.QueryString["uname"] + "'", ocn);
                        ocd.ExecuteNonQuery();
                        Response.Redirect("Login.aspx");
                    }
                }
                if (flag == false)
                {
                    Label1.Text = "Not Completed Sucessfully";
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("select * from login where UserId='" + Request.QueryString["uname"].ToString() + "'", ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            MailMessage mm = new MailMessage();

            MailAddress ma = new MailAddress("malamallmall@gmail.com", "MalaMall Mall");
            mm.From = ma;
            mm.IsBodyHtml = true;
            mm.Subject = "Activation Email";
            mm.To.Clear();
            mm.To.Add(Request.QueryString["uname"].ToString());
            mm.Body = "<a href=\"RegistrationComplete.aspx?uname=" + Request.QueryString["uname"].ToString() + "&code=" + odr.GetString(2) + "\"\">To Complete Registration Follow This Link </a><br><br><br><b>YOUR REGISTRATION CODE :  " + odr.GetString(2) + " </b>";
            //  Response.Write(mm.Body.ToString());
            SmtpClient sq = new SmtpClient();
            sq.EnableSsl = true;
            sq.Host = "smtp.gmail.com";
            sq.Port = 25;
            sq.Credentials = new NetworkCredential("malamallmall", "ecommerce");
            sq.Timeout = 999999;
            sq.Send(mm);
            // Response.Write("Sent sucessfully");
            Label1.Text = "Email Has Been Send Sucessfully Please Check your Email :";
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
