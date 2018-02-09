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

public partial class Registration : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    MailMessage mm = new MailMessage();
    Random r = new Random();
    
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
    }
    protected void bt_submit_Click(object sender, EventArgs e)
    {
        Label l = new Label();
        l.Text = r.Next(10000000, 99999999).ToString();
        try
        {
            ocn.Open();
            ocd = new OleDbCommand("insert into login values('" + txt_uname.Text + "','" + txt_pass.Text + "','" + l.Text + "')", ocn);
            ocd.ExecuteNonQuery();
            //            Response.Write("Inserted");
            ocd = new OleDbCommand("insert into customer_detail values('" + txt_uname.Text + "','" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_add.Text + "','" + txt_mo.Text + "','" + txt_altemail.Text + "','" + txt_city.Text + "','" + Txt_state.Text + "','" + txt_country.Text + "')", ocn);
            ocd.ExecuteNonQuery();


            MailAddress ma = new MailAddress("malamallmall@gmail.com", "Online Shopping");
            mm.From = ma;
            mm.IsBodyHtml = true;
            mm.Subject = "Registration At Online Shopping";
            mm.To.Clear();
            mm.To.Add(txt_uname.Text);
            //mm.To.Add(txt_uname.Text);
            mm.Body = TextBox1.Text + "<a href=\"http://www.yahoo.com?uname=" + txt_uname.Text + "&code=" + l.Text + "\"\">To Complete Registration Follow This Link </a> <br><br><br><b>YOUR REGISTRATION CODE :  " + l.Text + " </b> " +TextBox2.Text;

            //mm.Body = "<a href=\"RegistrationComplete.aspx?uname=" + txt_uname.Text + "&code=" + l.Text + "\"\">To Complete Registration Follow This Link </a>";
            Response.Write(mm.Body.ToString());
            SmtpClient sq = new SmtpClient();
            sq.EnableSsl = true;
            sq.Host = "smtp.gmail.com";
            sq.Port = 25;
            sq.Credentials = new NetworkCredential("malamallmall", "ecommerce");
            sq.Timeout = 999999;
            sq.Send(mm);
            Response.Write("Sent sucessfully");
            Response.Redirect("Login.aspx");
        }
        catch (Exception)
        {

            lbl.Visible = true;
            lbl.Text = "<br/> ¤ User With This Id Already Exist ! ! ! <br/> Please Enter Another";
            txt_uname.Focus();
        }
        finally
        {
            ocn.Close();
            
        }
    }
}
