using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace POS_StockManagement.Models
{
    public class EmployeeModel
    {
        public string UserID { get; set; }

        [Required(ErrorMessage = "Please fill username")]        
        public string UserName { get; set; }
        [Required(ErrorMessage = "Please fill password")]        
        public string Password { get; set; }
        public string Roles { get; set; }
    }
}