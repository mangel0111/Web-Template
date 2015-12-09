using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SessionHelper;
using SessionHelper.Models;
/// <summary>
/// Summary description for SessionMS
/// </summary>
public static class SessionMS
{
    public static SessionProperty<AccountModel.LoginUser> User = Session.CreateProperty<AccountModel.LoginUser>("User");
}