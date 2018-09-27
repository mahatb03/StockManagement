using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_UtilityLayer;

namespace POS_BusinessLayer
{
    public class Validateuser
    {
        private IUserDetails _user;

        public Validateuser(IUserDetails user)
        {
            _user = user;

        }

        public bool validate(string username, string password)
        {
            try
            {
                return _user.ValidateUsers(username, password);
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }
    }
}
