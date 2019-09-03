using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class OrderInfo_BLL
    {
        DAL.OrderInfo_DAL dal = new DAL.OrderInfo_DAL();
        /// <summary>
        /// 查询订单信息
        /// </summary>
        /// <returns></returns>
        public DataTable SelectOrderInfo(string where)
        {
            return dal.SelectOrderInfo(where);
        }
    }
}
