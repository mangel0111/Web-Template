using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class view_Ingreso : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            if (Request.Cookies["UserName"] != null && Request.Cookies["Password"] != null) 
            {
                txtName.Value = Request.Cookies["UserName"].Value;
            }
        }
    }

    protected void button_click(Object sender, EventArgs e )
    {
      var acc = new  AccountController();
      var user = new AccountModel.LoginUser();
      user.Email = txtName.Value;
      user.Password = txtPassword.Value;
      if (acc.Login(user))
      {
          RememberMe();
          Response.Redirect("PerfilMs.aspx");
      }
      else {
          LblLogError.Text = "Ha Introducido datos incorrectos!";
      }
    }

    private void RememberMe() 
    {
        if (chxRemenberMe.Checked)
        {
            Response.Cookies["UserNameMS"].Expires = DateTime.Now.AddMonths(30);
            Response.Cookies["PasswordMS"].Expires = DateTime.Now.AddMonths(30);
        }
        else 
        {
            Response.Cookies["UserNameMS"].Expires = DateTime.Now.AddMonths(-1);
            Response.Cookies["PasswordMS"].Expires = DateTime.Now.AddMonths(-1);
         }
        Response.Cookies["UserNameMS"].Value = txtName.Value.Trim();
        Response.Cookies["PasswordMS"].Value = txtPassword.Value.Trim();
     }

}