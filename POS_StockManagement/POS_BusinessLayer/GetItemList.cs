using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using POS_DataAccessLayer;
using POS_UtilityLayer;

namespace POS_BusinessLayer
{
    public class GetItemList
    {
        private IGetItem _getitems;
        public GetItemList(IGetItem getitems)
        {
            _getitems = getitems;
        }
        public List<GetItemModel> List()
        {
            try
            {
                return _getitems.getItemList();
            }

            catch (Exception ex)
            {
                Log.Error(ex.ToString());
                throw;
            }

        }
    }
}
