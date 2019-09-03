using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Order
{
    public partial class Main : System.Web.UI.Page
    {
        BLL.userinfo_BLL bllUser = new BLL.userinfo_BLL();
        BLL.StoreInfo_BLL bllStore = new BLL.StoreInfo_BLL();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] == null)
                {

                }
                else
                {

                    Label1.Text = Session["name"].ToString();
                }
                if (Session["Address"] == null)
                {
                }
                else
                {
                    lblAddress.Text = Session["Address"].ToString();
                }

            }
        }

        protected void btnChangeAddress_Click(object sender, EventArgs e)
        {
            Response.Redirect("Address.aspx");
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    string where = " where uiid='"+txtUserName.Value+"'";
        //    dt= bllUser.SelectUserInfo(where);
        //    if (dt.Rows.Count > 0)
        //    {
        //        if (txtPwd.Value.Trim() == dt.Rows[0]["uipwd"].ToString())
        //        {
        //            Response.Write("('<script>alert('登陆成功！');</script>");
        //            Response.Redirect("Main.aspx");
        //        }
        //        else
        //        {
        //            Response.Write("('<script>alert('密码错误！');</script>");
        //        }
        //    }
        //    else
        //    {
        //        Response.Write("('<script>alert('用户名不存在！');</script>");
        //    }
        //}
        public string BindDataTr1()
        {
            string str = "";
            string where = "";
            dt = bllStore.SelectStoreInfo(where);
            int k = 0;
            for (int j = 0; j < Math.Ceiling((double)dt.Rows.Count / 4); j++)
            {
                str += "<tr>";
                if (k < Math.Floor((double)dt.Rows.Count / 4))
                {
                    str += "<td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[k * 4]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[k * 4 + 0]["storeImg"].ToString() + "' title=" + dt.Rows[k * 4 + 0]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[k * 4 + 0]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[k * 4 + 0]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[k * 4 + 0]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>"
                         + "<td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[k * 4 + 1]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[k * 4 + 1]["storeImg"].ToString() + "' title=" + dt.Rows[k * 4 + 1]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[k * 4 + 1]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[k * 4 + 1]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[k * 4 + 1]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>"
                         + "<td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[k * 4 + 2]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[k * 4 + 2]["storeImg"].ToString() + "' title=" + dt.Rows[k * 4 + 2]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[k * 4 + 2]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[k * 4 + 2]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[k * 4 + 2]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>"
                         + "<td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[k * 4 + 3]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[k * 4 + 3]["storeImg"].ToString() + "' title=" + dt.Rows[k * 4 + 3]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[k * 4 + 3]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[k * 4 + 3]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[k * 4 + 3]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>";
                    k++;
                }

                else
                {
                    for (int i = 0; i < dt.Rows.Count % 4; i++)
                    {
                        str += "<td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[i + 4 * k]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[i + 4 * k]["storeImg"].ToString() + "' title=" + dt.Rows[i + 4 * k]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[i + 4 * k]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[i + 4 * k]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[i + 4 * k]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>";
                    }
                }
                str += "</tr>";
            }
         
            return str;
        }

        //public string aa() {
        //    Session["name"] = HiddenField1.Value;

        //    return null ;
        //}

        //protected string WhSelectStore()
        //{
        //    string where = "";

        //    if (txtHide.Value == "0")
        //    {
        //        where = "";
        //    }
        //    if (txtHide.Value == "1")
        //    {
        //        where = " order by saleNum desc";
        //    }
        //    if (txtHide.Value == "2")
        //    {
        //        where = " order by evaluation desc";
        //    }
        //    if (txtHide.Value == "3")
        //    {
        //        where = " order by foodtime desc";
        //    }
        //    if (txtHide.Value == "4")
        //    {
        //        where = " where storeName like  '%" + txtAddress.Value + "%'";
        //    }
        //    return where;
        //}

        //Response.AddHeader("Refresh", "0");--页面刷新方法

        protected void MyOrder_Click(object sender, EventArgs e)
        {
            if (Session["name"]!=null)
            {

                Response.Redirect("Myorder.aspx");
            }
            else
            {
                Response.Write("<script>alert('请先登录');</script>");
            }
        }

        protected void btnRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }
        //protected void btnSaleNum_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "1";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void btnevaluaiton_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "2";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void btnfoodtime_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "3";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void btnSelectd_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "4";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void StoreSelect_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "1";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void Usually_Click(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "0";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}

        //protected void Refresh_Click1(object sender, EventArgs e)
        //{
        //    if (txtHide.Value == "")
        //    {
        //        txtHide.Value = "0";
        //    }
        //    else
        //    {
        //        txtHide.Value = "";
        //    }
        //}
        protected void btnClose_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            Response.AddHeader("Refresh", "0"); 
            Label1.Text = "";
        }
    }
}