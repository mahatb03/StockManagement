﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace POS_DataAccessLayer
{
    public interface IGetItem
    {
        List<GetItemModel> getItemList();
    }
}
