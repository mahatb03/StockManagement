using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS_DataAccessLayer
{
    public class GetItemModel
    {
        public string ProductID { get; set; }
        public decimal Price { get; set; }
        public string Color { get; set; }
        public string Brand { get; set; }
        public string Category { get; set; }
        public int Size { get; set; }
        public DateTime DateOfEntry { get; set; }
    }
}
