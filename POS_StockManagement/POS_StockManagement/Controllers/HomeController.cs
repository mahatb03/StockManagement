using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using POS_StockManagement.Models;
using POS_BusinessLayer;
using System.Web.Security;

namespace POS_StockManagement.Controllers
{
    public class HomeController : Controller
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
                throw ex;
            }
        }


        [Authorize]
        public ActionResult Welcome()
        {
            return View();
        }

       
        public ActionResult InvalidCredential()
        {
            return View();
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
                    FormsAuthentication.RedirectFromLoginPage(empmodel.UserName, true);
                    return RedirectToAction("Welcome");
                }

                else
                {
                    return RedirectToAction("InvalidCredential");
                }
            }

            catch(Exception ex)
            {
                throw ex;
            }

        }

        
    }
}