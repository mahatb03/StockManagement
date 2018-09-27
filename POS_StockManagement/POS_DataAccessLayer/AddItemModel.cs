using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.Web;
using System.Web.Mvc;

namespace POS_DataAccessLayer
{
    public class AddItemModel
    {
       
            [Required(ErrorMessage = "Please fill ProductId")]
            public string ProductID { get; set; }
            [Required(ErrorMessage = "Please fill Price")]
            public decimal Price { get; set; }
            [Required(ErrorMessage = "Please fill Color")]
            public int Color_ID { get; set; }
            [Required(ErrorMessage = "Please fill Brand")]
            public int Brand_ID { get; set; }
            [Required(ErrorMessage = "Please fill Category")]
            public int Category_ID { get; set; }
            [Required(ErrorMessage = "Please fill Size")]
            public int Size_ID { get; set; }
            [Required(ErrorMessage = "Please fill DateofEntry")]
            public DateTime DateOfEntry { get; set; }

            public List<SelectListItem> Brand { get; set; }
            public List<SelectListItem> Category { get; set; }
            public List<SelectListItem> Color { get; set; }
            public List<SelectListItem> Size { get; set; }
        
    }
}
