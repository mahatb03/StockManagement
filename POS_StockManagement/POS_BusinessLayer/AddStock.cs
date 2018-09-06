using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_DataAccessLayer;

namespace POS_BusinessLayer
{
    public class AddStock
    {
        public bool addItems(string productId, decimal price, string color, string brand, string category, int size, DateTime dateofentry)
        {
            AddItem add = new AddItem();
            return add.addItem(productId, price, color, brand, category, size, dateofentry);
        }
    }
}
