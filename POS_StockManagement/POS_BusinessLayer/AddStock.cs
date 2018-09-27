using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_DataAccessLayer;
using POS_UtilityLayer;

namespace POS_BusinessLayer
{
    public class AddStock
    {
        private IAddItem _additems;
        public AddStock(IAddItem additems)
        {
            _additems = additems;
        }
        public bool addItems(AddItemModel itm)
        {
            try
            {
                
                return _additems.addItem(itm);
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }
    }
}
