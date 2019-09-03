using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class StoreInfo_BLL
    {
        DAL.StoreInfo_DAL dal = new DAL.StoreInfo_DAL();
        /// <summary>
        /// 查询店铺信息
        /// </summary>
        /// <returns></returns>
        public DataTable SelectStoreInfo(string where)
        {
            return dal.SelectStoreInfo(where);
        }
    }
}
