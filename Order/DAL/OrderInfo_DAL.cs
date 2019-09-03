using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class OrderInfo_DAL
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        /// <summary>
        /// 查询订单信息
        /// </summary>
        /// <returns></returns>
        public DataTable SelectOrderInfo(string where)
        {    
            string sql = "select * from OrderInfo where 1=1";
            DataTable dt = db.SelectData(sql);
            return dt;
        }
    }
}
