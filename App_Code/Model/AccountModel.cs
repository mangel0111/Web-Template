using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;
/// <summary>
/// Summary description for AccountModel
/// </summary>
public class AccountModel
{
	public AccountModel()
	{
	}

    public class LoginUser
    {

        public int Id { get; set; }
        public String Email {get; set;}

        public string Password {get; set;}

        public string FirtsName { get; set; }

        public string LastName { get; set; }

    }

    public class RegisterUser
    {
        [Required]
        [Display(Name = "Email")]
        [DataType(DataType.EmailAddress)]
        public String Email { get; set; }

        [Required]
        [StringLength(100, ErrorMessage="El {0} debe contener al menos {2} carecteres.", MinimumLength=6)]
        [DataType(DataType.Password)]
        [Display(Name = "Password")]
        public string Password { get; set; }

        }

    public class ForgotPassword
    {
        [Required]
        [Display(Name = "Email")]
        [DataType(DataType.EmailAddress)]
        public String Email { get; set; }
        
    }
   
}