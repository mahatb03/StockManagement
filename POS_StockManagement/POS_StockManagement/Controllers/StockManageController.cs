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
                AddStock stock = new AddStock();
                bool flag = stock.addItems(itm);

                if (flag == true)
                {
                    ViewBag.Message = "Item added successfully";
                }

                return View("AddItemSucess");
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }
    }
}