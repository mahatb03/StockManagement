using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using log4net;
using POS_UtilityLayer;

namespace POS_StockManagement.Controllers
{
    public class HomeController : Controller
    {
        
        [Authorize]
        public ActionResult Welcome()
        {
            try
            {
                return View();
            }            

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }


        
        public ActionResult  StockManage()
        {
            try
            {
                return View();
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }


    }
}