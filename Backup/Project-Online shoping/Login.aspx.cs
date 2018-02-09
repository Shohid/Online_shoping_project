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

public partial class Login : System.Web.UI.Page
{
    OleDbConnection ocn;
    OleDbCommand ocd;
    OleDbDataReader odr;
    bool flag1 = false;
    MailMessage mm = new MailMessage();

    Label lb;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        txt_code.Visible = false;
        
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
    protected void submit_ServerClick(object sender, EventArgs e)
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
                    if (txt_uname.Text == odr.GetString(0) && txt_pass.Text == odr.GetString(1))
                    {
                        flag1 = true;
                        if (odr.GetString(2) == "Yes" )
                        {
                            
                            //Response.Write("Logged Succesful");
                            Session["logged"] = txt_uname.Text;

                            if (Session["Buy"].ToString() == "Yes")
                            {
                                try
                                {
                                    ocd = new OleDbCommand("select * from temp where orderid=" + Convert.ToInt32(Session["orderid"]) + "", ocn);
                                    odr = ocd.ExecuteReader();
                                    int i = 0;
                                    if (odr.HasRows)
                                    {
                                        
                                        while (odr.Read())
                                        {
                                            lb = new Label();
                                            lb.Text += "<b>" + i.ToString() + ". Product Name : </b>" + odr["name"].ToString() + "<br>" + "<b>Quantity  : </b>" + odr["qty"].ToString() + "<br>" + "<b>Price   : </b>" + lb.Text + odr["price"].ToString() + "<br><br>";

                                            //nlb = new Label();
                                            //qlb = new Label();
                                            //plb = new Label();
                                            //nlb.Text = "<b>" + i.ToString() + ". Product Name : </b>" + odr["name"].ToString()+"<br>";
                                            //qlb.Text = "<b>Quantity  : </b>" + odr["qty"].ToString() + "<br>";



                                            //plb.Text = "<b>Price   : </b>" +lb.Text + odr["price"].ToString()+"<br>";

                                            //lb.Text += nlb.Text +qlb.Text +plb.Text+"<br><br>" ;
                                            i++;
                                            
                                        }
                                        
                                    }
                                    

                                    if (Session["orderno"] != null)
                                    {
                                        ocd = new OleDbCommand("select count(orderid) from temp where orderid=" + Convert.ToInt32(Session["orderno"]) + "", ocn);
                                        odr = ocd.ExecuteReader();
                                        odr.Read();
                                        if (Convert.ToInt32(odr[0].ToString()) > 0)
                                            Session["Buy"] = "Yes";
                                        lb.Text += "<b>Total Item</b> : "+odr[0].ToString()+"<br>";

                                        if (Convert.ToInt32(odr[0].ToString()) > 0)
                                        {
                                            ocd = new OleDbCommand("select sum(price) from temp where orderid=" + Convert.ToInt32(Session["orderno"]) + "", ocn);
                                            odr = ocd.ExecuteReader();
                                            odr.Read();
                                            lb.Text += "<br>";
                                            lb.Text += "<b>Net Amount</b> : "+odr[0].ToString() + "  Rs.";

                                        }
                                        else
                                        {
                                            //lbl_tot_price.Text = "00.0  Rs.";
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





                                
                                MailAddress ma = new MailAddress("malamallmall@gmail.com", "Online Shopping");
                                mm.From = ma;
                                mm.IsBodyHtml = true;
                                mm.Subject = "Shopping Cart";
                                mm.To.Add(txt_uname.Text);
                                mm.Body = TextBox1.Text + lb.Text  + TextBox2.Text;

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


                                Response.Redirect("CheckOut.aspx");



                            }
                            else
                            {
                                Response.Redirect("Default.aspx");
                            }
                        }
                        else
                        {

                            Response.Redirect("RegistrationComplete.aspx?uname="+txt_uname.Text);
                            
                        //    Label1.Visible = true;
                        //    Button1.Visible = true;
                        //    txt_code.Visible = true;
                        //    Label2.Visible = true;
                        //    Label1.Text = "Your Account has not Activated yet <br> first Activated it by using Activation Link from mail send by Us <br> Do U Want To Resend Email : ";
                        }
                    }
                }
                if (flag1 != true)
                {
                    Label1.Text = "Invalid User Name Or Password";
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
            ocd = new OleDbCommand("select * from login where UserId='" + txt_uname.Text + "'", ocn);
            odr = ocd.ExecuteReader();
            odr.Read();
            MailMessage mm = new MailMessage();

            MailAddress ma = new MailAddress("malamallmall@gmail.com", "MalaMall Mall");
            mm.From = ma;
            mm.IsBodyHtml = true;
            mm.Subject = "Activation Email";
            mm.To.Clear();
            mm.To.Add(txt_uname.Text);
            mm.Body = "<a href=\"RegistrationComplete.aspx?uname=" + txt_uname.Text + "&code=" + odr.GetString(2) + "\"\">To Complete Registration Follow This Link </a><br><br><br><b>YOUR REGISTRATION CODE :  " + odr.GetString(2) + " </b>";
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
            Button1.Visible = false;
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
