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
    public class StockManageController : Controller
    {
        
        public ActionResult AddItem()
        {
            try
            {
                NewItem model = new NewItem();
                model.DateOfEntry = DateTime.Today;

                Dropdownlist item = new Dropdownlist();
                var tuple = item.InitModel();

                model.Size = tuple.Item1;
                model.Color = tuple.Item2;
                model.Category = tuple.Item3;
                model.Brand = tuple.Item4;
                
                return View(model);

            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }

      

        [HttpPost]
        public ActionResult AddItem(string submit,  AddItemModel itm)
        {
            try
            {
                UnityContainer UC = new UnityContainer();
                UC.RegisterType<AddStock>();
                UC.RegisterType<AddItem>();

                UC.RegisterType<IAddItem, AddItem>();

                AddStock addstocks = UC.Resolve<AddStock>();

                bool flag = addstocks.addItems(itm);

                if (flag == true)
                {
                    ViewBag.Message = "Item added successfully";
                }

                return RedirectToAction("AddItemView", "StockReport");
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }       
       
    }
}