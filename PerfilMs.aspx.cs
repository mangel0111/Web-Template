using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PerfilMs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            if (SessionMS.User.Get() == null)
            {
                if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null)
                {
                    var user = new AccountModel.LoginUser();
                    user.Email = Request.Cookies["UserName"].Value;
                    user.Password = Request.Cookies["Password"].Value;
                    var acc = new AccountController();
                    if (!acc.Login(user)) {
                        Response.Redirect("Ingreso.aspx");
                    }
                }
                else {
                    Response.Redirect("Ingreso.aspx");
                }
            }
            else
            {
                Label1.Text = SessionMS.User.Get().FirtsName;
            }
        
    }
}