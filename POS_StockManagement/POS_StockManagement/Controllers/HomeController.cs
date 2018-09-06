using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace POS_StockManagement.Controllers
{
    public class HomeController : Controller
    {
        
        [Authorize]
        public ActionResult Welcome()
        {
            return View();
        }


        
        public ActionResult  StockManage()
        {
            return View();
        }


    }
}