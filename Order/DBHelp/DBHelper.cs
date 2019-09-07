using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DBHelp
{
    public class DBHelper
    {
        string sqlStr = "Data Source=.;Initial Catalog=Orders;User ID=sa; PWD=123.zxc";

        public DataTable SelectData(string sql)
        {
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(sql, sqlStr))
            {
                sda.Fill(dt);
            }
            return dt;
        }

        public void ExecuteNonQuery(string sql)
        {
            SqlTransaction tran = null;
            SqlConnection conn = new SqlConnection(sqlStr);
            try
            {
                if (conn.State != ConnectionState.Open)
                {
                    conn.Open();
                }
                tran = conn.BeginTransaction();
                SqlCommand cmd = new SqlCommand(sql, conn, tran);
                cmd.ExecuteNonQuery();

                tran.Commit();
            }
            catch (Exception ex)
            {
                tran.Rollback();
                throw ex;
            }
            finally
            {
                conn.Close();
            }
        }

    }
}
