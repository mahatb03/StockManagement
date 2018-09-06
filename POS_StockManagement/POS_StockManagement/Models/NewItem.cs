using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace POS_StockManagement.Models
{
    public class NewItem
    {
        [Required(ErrorMessage = "Please fill ProductId")]
        public string ProductID { get; set;}
        [Required(ErrorMessage = "Please fill Price")]
        public decimal Price { get; set; }
        [Required(ErrorMessage = "Please fill Color")]
        public string Color { get; set; }
        [Required(ErrorMessage = "Please fill Brand")]
        public string Brand { get; set; }
        [Required(ErrorMessage = "Please fill Category")]
        public string Category { get; set; }
        [Required(ErrorMessage = "Please fill Size")]
        public int Size { get; set; }
        [Required(ErrorMessage = "Please fill DateofEntry")]
        public DateTime DateOfEntry { get; set; } 
       
    }
}