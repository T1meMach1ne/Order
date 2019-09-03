using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class StoreInfo_DAL
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        /// <summary>
        /// 查询店铺信息
        /// </summary>
        /// <returns></returns>
        public DataTable SelectStoreInfo(string where)
        {
            string sql = "select * from StoreInfo" + where;
            DataTable dt = db.SelectData(sql);
            return dt;
        }
    }
}
