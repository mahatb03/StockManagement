using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_DataAccessLayer;

namespace POS_BusinessLayer
{
    public class Validateuser
    {
        public bool validate(string username, string password)
        {
            try
            {
                UserDetails user = new UserDetails();
                return user.ValidateUsers(username, password);
            }

            catch(Exception ex)
            {
                throw ex;
            }

        }
    }
}
