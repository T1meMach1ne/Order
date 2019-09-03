using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Order
{
    public partial class productInfo : System.Web.UI.Page
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        //传值，餐厅id

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
            string StoreId = Request["id"].ToString();
            Session["id"] = Request["id"].ToString();
            if (!IsPostBack)
            {
                string sql = "select * from StoreInfo where id='" + StoreId + "'";
                DataTable dt = db.SelectData(sql);
                Image1.ImageUrl = dt.Rows[0]["storeImg"].ToString();
                Label9.Text = dt.Rows[0]["storeName"].ToString();


                string strsql = "select * from productInfo where storeId='" + StoreId + "'";
                DataTable dtt = db.SelectData(strsql);

                //string strsql1 = "select * from TypeInfo where TypeId='" + dtt.Rows[i]["productType"].ToString() + "'";
                for (int i = 0; i < dtt.Rows.Count; i++)
                {
                    if (dtt.Rows[i]["productType"].ToString() == "1")
                    {
                        Label15.Text = "小干锅饭";
                        Label1.Text = "小干锅饭";
                    }
                    if (dtt.Rows[i]["productType"].ToString() == "2")
                    {
                        Label16.Text = "汤饭";
                        Label3.Text = "汤饭";
                    }
                    if (dtt.Rows[i]["productType"].ToString() == "3")
                    {
                        Label15.Text = "炒菜";
                        Label1.Text = "炒菜";
                    }
                    if (dtt.Rows[i]["productType"].ToString() == "4")
                    {
                        Label16.Text = "盖浇饭";
                        Label3.Text = "盖浇饭";
                    }
                    if (dtt.Rows[i]["productType"].ToString() == "5")
                    {
                        Label15.Text = "卤肉饭";
                        Label1.Text = "卤肉饭";
                    }
                    if (dtt.Rows[i]["productType"].ToString() == "6")
                    {
                        Label16.Text = "烤肉饭";
                        Label3.Text = "烤肉饭";
                    }
                }
            }
        }
        public string HTMLGridView1()
        {
            string StoreId = Request["id"].ToString();
            string str = "";
            string sql = "select * from productInfo where storeId='" + StoreId + "' and productMemo='1'";
            DataTable dt = db.SelectData(sql);
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<td  class='noe15' colspan='2'><img src='" + dt.Rows[i]["productImg"].ToString() + "' alt='购买'  /></td>";

            }
            return str;
        }
        public string HTMLGridView2()
        {
            string StoreId = Request["id"].ToString();
            string str = "";
            string sql = "select * from productInfo where storeId='" + StoreId + "' and productMemo='1'";
            DataTable dt = db.SelectData(sql);
            string aa = "img/11.jpg";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<td class='noe15'><label>" + dt.Rows[i]["productName"].ToString() + "</label></td><td><label>￥" + float.Parse(dt.Rows[i]["productPrice"].ToString()).ToString("0.00") + "/份 </label><img src='" + aa + "'  class='noe14' onclick='Info(this);'/></td>";

            }
            return str;
        }
        public string HTMLGridView3()
        {
            string StoreId = Request["id"].ToString();
            string str = "";
            string sql = "select * from productInfo left join TypeInfo on TypeInfo.TypeId= productInfo.productType where storeId='" + StoreId + "' and productMemo='2' and TypeName='" + Label1.Text + "'";
            DataTable dt = db.SelectData(sql);
            string aa = "img/11.jpg";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<tr><td class='noe15'><label>" + dt.Rows[i]["productName"].ToString() + "</label></td><td class='noe13'><label>￥" + float.Parse(dt.Rows[i]["productPrice"].ToString()).ToString("0.00") + "/份 </label><img src='" + aa + "' class='noe14' onclick='Info(this);'/></td></tr>";

            }
            return str;
        }
        public string HTMLGridView4()
        {
            string StoreId = Request["id"].ToString();
            string str = "";
            string sql = "select * from productInfo left join TypeInfo on TypeInfo.TypeId= productInfo.productType where storeId='" + StoreId + "' and productMemo='2' and TypeName='" + Label3.Text + "'";
            DataTable dt = db.SelectData(sql);
            string aa = "img/11.jpg";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<tr><td class='noe15'>" + dt.Rows[i]["productName"].ToString() + "</td><td class='noe13'>￥" + float.Parse(dt.Rows[i]["productPrice"].ToString()).ToString("0.00") + "/份 <img src='" + aa + "' class='noe14'  onclick='Info(this);'/></td></tr>";

            }
            return str;
        }

        protected void btnRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            lbllogin.Text = "";
            Response.Redirect("Main.aspx");
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {

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
    }
}