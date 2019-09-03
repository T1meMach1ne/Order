using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Order
{
    public partial class Myorder : System.Web.UI.Page
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] == null)
                {

                }
                else
                {
                    lbllogin.Text = Session["name"].ToString();
                }
            }
        }
        public string BindDataTr1()
        {
            string str = "";
            if (Session["name"] == null)
            {

            }
            else
            {
            
                DataTable dt = db.SelectData("select OrderInfo.orderContent,orderTime,acceptTime,expressTel,StoreInfo.storeName,OrderInfo.countPrice  from OrderInfo left join StoreInfo on OrderInfo.storeID=StoreInfo.id where orderUserId='" + Session["name"].ToString() + "'");
                str += " <tr><td>菜  名</td><td>下单时间</td><td>接单时间</td><td>送餐人电话</td><td>店  名</td><td>总  额</td></tr>";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str += "<tr><td>'" + dt.Rows[i]["orderContent"].ToString().Substring(0, 4) + "'</td><td>'" + dt.Rows[i]["orderTime"].ToString() + "'</td><td>'" + dt.Rows[i]["acceptTime"].ToString() + "'</td><td>'" + dt.Rows[i]["expressTel"].ToString() + "'</td><td>'" + dt.Rows[i]["storeName"].ToString() + "'</td><td>'" + dt.Rows[i]["countPrice"].ToString() + "'</td></tr>";
                }
                
            }
            return str;
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            lbllogin.Text = "";
            Response.Redirect("Main.aspx");
        }

        protected void MyOrders_Click(object sender, EventArgs e)
        {
            if (Session["name"] != null)
            {

                Response.Redirect("Myorder.aspx");
            }
            else
            {
                Response.Write("<script>alert('请先登录');</script>");
            }
        }

        protected void StoreSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Server.aspx");
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}