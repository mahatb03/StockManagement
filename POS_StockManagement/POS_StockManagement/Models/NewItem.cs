using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace POS_StockManagement.Models
{
    public class NewItem
    {
        [Required(ErrorMessage = "Please fill ProductId")]
        public string ProductID { get; set; }
        [Required(ErrorMessage = "Please fill Price")]
        public decimal Price { get; set; }
        [Required(ErrorMessage = "Please fill Color")]
        public string Color_ID { get; set; }
        [Required(ErrorMessage = "Please fill Brand")]
        public string Brand_ID { get; set; }
        [Required(ErrorMessage = "Please fill Category")]
        public string Category_ID { get; set; }
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