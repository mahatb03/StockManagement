using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_DataAccessLayer;
using POS_UtilityLayer;

namespace POS_BusinessLayer
{
    public class ItemDetails
    {
       
        FetchItemDetails dtl = new FetchItemDetails();
        public DataTable fetchcolor()
        {
            return dtl.color();
        }
        public DataTable fetchbrand()
        {
            DataTable dtb = dtl.brand();
            return dtb;
        }
        public DataTable fetchcategory()
        {
            return dtl.category();
        }
        public DataTable fetchsize()
        {
            return dtl.size();
        }
    }
}
