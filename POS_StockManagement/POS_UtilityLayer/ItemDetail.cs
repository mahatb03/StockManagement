using System;
using System.Data;
using System.Web;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace POS_UtilityLayer
{
    public class ItemDetail
    {
       
        public int ColorID { get; set; }
        public string ColorValue { get; set; }
        public int BrandID { get; set; }
        public string BrandValue { get; set; }
        public int SizeID { get; set; }
        public int SizeValue { get; set; }
        public int CategoryID { get; set; }
        public string CategorValue { get; set; }

        

    }
}
