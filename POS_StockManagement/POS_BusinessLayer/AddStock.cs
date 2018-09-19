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
        public bool addItems(AddItemModel itm)
        {
            try
            {
                AddItem add = new AddItem();
                return add.addItem(itm);
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }
        }
    }
}
