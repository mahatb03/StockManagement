using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS_UtilityLayer
{
    public interface IUserDetails
    {
         bool ValidateUsers(string username, string password);

    }
}
