using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class userinfo_DAL
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <returns></returns>
        public DataTable SelectUserInfo(string where)
        {
            string sql = "Select * from userinfo " + where;
            DataTable dt=db.SelectData(sql);
            return dt;
        }
        /// <summary>
        /// 新增账户
        /// </summary>
        /// <param name="model"></param>
        public void AddUserInfo(Model.userinfo_Model model)
        {
            string sql = "insert into userinfo values('" + model.uiid + "','" + model.uipwd + "')";
            db.ExecuteNonQuery(sql);
        }
        /// <summary>
        /// 修改账户
        /// </summary>
        /// <param name="model"></param>
        public void UpdateUserInfo(Model.userinfo_Model model)
        {
            string sql = "Update userinfo set uipwd='" + model.uipwd + "'"
                        + "Update usersongcaninfo ";
            db.ExecuteNonQuery(sql);
        }
    }
}
