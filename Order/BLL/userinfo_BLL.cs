using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace BLL
{
    public class userinfo_BLL
    {
        DAL.userinfo_DAL dal = new DAL.userinfo_DAL();
        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <param name="where"></param>
        /// <returns></returns>
        public DataTable SelectUserInfo(string where)
        {
            return dal.SelectUserInfo(where);
        }
        /// <summary>
        /// 新增用户信息
        /// </summary>
        /// <param name="model"></param>
        public void AddUserInfo(Model.userinfo_Model model)
        {
            dal.AddUserInfo(model);
        }
        /// <summary>
        /// 修改用户信息
        /// </summary>
        /// <param name="model"></param>
        public void UpdateUserInfo(Model.userinfo_Model model)
        {
            dal.UpdateUserInfo(model);
        }
    }
}
