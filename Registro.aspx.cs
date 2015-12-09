using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button_click(Object sender, EventArgs e)
    {

        if (txtPassword.Value == txtPassword2.Value)
        {
            var acc = new AccountController();
            var user = new AccountModel.LoginUser();
            user.Email = txtEmail.Value;
            user.FirtsName = txtFirtsName.Value;
            user.LastName = txtLastName.Value;
            user.Password = txtPassword.Value;

            if (!acc.ChekEmail(user))
            {
                if (acc.Register(user))
                {
                    Response.Redirect("PerfilMs.aspx");
                }
                else
                {
                    LblLogError.Text = "Ha Introducido datos incorrectos!";
                }
            }
            else {
                LblLogError.Text = "El email usado ya existe!";
            }
        }

        else
        {
            LblLogError.Text = "Las Contrasenas deben coincidir!";
        }
    }
}