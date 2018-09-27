using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using POS_BusinessLayer;
using POS_StockManagement.Models;
using POS_UtilityLayer;
using POS_StockManagement.Repository;
using POS_DataAccessLayer;
using Unity;

namespace POS_StockManagement.Controllers
{
    public class StockReportController : Controller
    {
        public ActionResult AddItemView()
        {
            return View();
        }


        // GET: StockReport
        public JsonResult LoadItem()
        {
            try
            {
                UnityContainer UC = new UnityContainer();

                UC.RegisterType<GetItem>();
                UC.RegisterType<GetItemList>();

                UC.RegisterType<IGetItem, GetItem>();

                GetItemList items = UC.Resolve<GetItemList>();

                List<GetItemModel> getlist = new List<GetItemModel>();
                getlist = items.List();

                return Json(getlist, JsonRequestBehavior.AllowGet);
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }
    }
}