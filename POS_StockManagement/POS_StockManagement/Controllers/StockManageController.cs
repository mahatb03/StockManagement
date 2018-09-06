using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using POS_BusinessLayer;
using POS_StockManagement.Models;
using POS_UtilityLayer;

namespace POS_StockManagement.Controllers
{
    public class StockManageController : Controller
    {
        
        public ActionResult AddItem()
        {
            NewItem model = new NewItem();
            model.DateOfEntry = DateTime.Today;
            ItemDetails itm = new ItemDetails();

            DataTable dtc = itm.fetchcolor();
            DataTable dtb = itm.fetchbrand();
            DataTable dtca = itm.fetchcategory();
            DataTable dts = itm.fetchsize();

            ViewBag.Color = ToSelectList(dtc,"Color", "ID");
            ViewBag.Brand = ToSelectList(dtb,  "Brand", "ID");
            ViewBag.Category = ToSelectList(dtca,  "Category", "ID");
            ViewBag.Size = ToSelectList(dts, "Size", "ID");
            
            return View(model);
        }

        public SelectList ToSelectList(DataTable table,  string textField, string valueField)
        {
            List<SelectListItem> list = new List<SelectListItem>();

            foreach (DataRow row in table.Rows)
            {
                list.Add(new SelectListItem()
                {
                    Text = row[textField].ToString(),
                    Value = row[valueField].ToString()
                });
            }

            return new SelectList(list, "Value", "Text");
        }

        [HttpPost]
        public ActionResult AddItem(string submit, NewItem itm)
        {
            
            AddStock stock = new AddStock();
            bool flag = stock.addItems(itm.ProductID, itm.Price, itm.Color, itm.Brand, itm.Category, itm.Size, itm.DateOfEntry);

            if (flag == true)
            {
                ViewBag.Message = "Item added successfully";
            }

            return View("AddItemSucess");
        }
    }
}