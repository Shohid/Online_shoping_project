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

public partial class Login_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_ServerClick(object sender, EventArgs e)
    {
        if (txt_uname.Text == "z_amit007@yahoo.com" && txt_pass.Text == "007007")
        {
            Session["AdminLogin"] = "Sucessful";

        }
    }
}
