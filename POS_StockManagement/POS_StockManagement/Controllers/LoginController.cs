using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using POS_StockManagement.Models;
using POS_BusinessLayer;
using System.Web.Security;
using POS_UtilityLayer;

namespace POS_StockManagement.Controllers
{
    public class LoginController : Controller
    {
        // GET: Login

       
        [AllowAnonymous]
        public ActionResult Index()
        {
            try
            {
                return View();
            }

            catch(Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }


       
       
        //POST: Login

        [HttpPost]
        [AllowAnonymous]
        public ActionResult Index(string submit ,EmployeeModel empmodel)
        {
            try
            {
                Validateuser newuser = new Validateuser();
                bool flag = newuser.validate(empmodel.UserName, empmodel.Password);

                if (flag == true)
                {
                    Log.Info("Login-page started...");
                    FormsAuthentication.RedirectFromLoginPage(empmodel.UserName, true);
                    return RedirectToAction("Welcome","Home");
                }

                else
                {
                    Log.Info("Invalid Credentials..");
                    ViewBag.Message = "Username or Password does not match";
                    return View();
                }
            }

            catch(Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }

        
    }
}