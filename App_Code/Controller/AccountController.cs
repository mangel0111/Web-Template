using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Microsoft.Web;
using System.Web.UI;
using WebMatrix.WebData;
using System.Threading.Tasks;
using System.Data.SqlClient;




/// <summary>
/// Summary description for AccountController
/// </summary>
public class AccountController
{
	public AccountController()
	{
    }

    public bool Login(AccountModel.LoginUser model)
    {

        var cmd = new SqlCommand("SELECT * FROM webuser WHERE webuseremail='" + model.Email + "' AND WebUserPassword='" + model.Password + "'", openCnn());
        var read = cmd.ExecuteReader();
        model.Id = 0;
        while (read.Read())
        {
            model.Id = Convert.ToInt32(read["WebUserId"]);
            model.FirtsName = Convert.ToString(read["WebUserFirtsName"]);
            model.LastName = Convert.ToString(read["WebUserLastName"]);
        }
        return getSession(model);
    }

    public bool ChekEmail(AccountModel.LoginUser model)
    { 
        var cmd = new SqlCommand("SELECT WebUserId FROM webuser WHERE webuseremail='" + model.Email + "'", openCnn());
        var read = cmd.ExecuteReader();
        int count = 0;
        while (read.Read())
        {
            count++;
        }
        return count > 0;
    }

    public bool Register(AccountModel.LoginUser model)
    {
        var cnn = openCnn();
        var cmd = new SqlCommand("INSERT INTO WebUser (webuseremail, webuserfirtsname, webuserlastname, webuserpassword, webuserdate) VALUES ('"+
            model.Email + "','" + model.FirtsName + "','" + model.LastName + "','" + model.Password + "',GETDATE())", openCnn());
        var execute = cmd.ExecuteNonQuery();
        cmd = new SqlCommand("SELECT * FROM webuser WHERE webuseremail='" + model.Email + "' AND WebUserPassword='" + model.Password + "'", openCnn());
        var read = cmd.ExecuteReader();
        model.Id = 0;
        while (read.Read())
        {
            model.Id = Convert.ToInt32(read["WebUserId"]);
            model.FirtsName = Convert.ToString(read["WebUserFirtsName"]);
            model.LastName = Convert.ToString(read["WebUserLastName"]);
        }
        return getSession(model);  
    }

    private SqlConnection openCnn() 
    {
        var con = new AdoConnections();
        var cnn = new SqlConnection();
        cnn = con.AbreConneccion();
        return cnn;
    }
    
    private ActionResult RedirectToLocal(string returnURL)
    {        
        return null;
       // return RedirectResult;
    }


    private bool getSession(AccountModel.LoginUser model)
    {
        if (model.Id != 0)
        {
            SessionMS.User.Set(model);            
            return true;
        }
        else {
            return false;
        }
    }

}