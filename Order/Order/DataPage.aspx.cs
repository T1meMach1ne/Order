using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Order
{
    public partial class DataPage : System.Web.UI.Page
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        BLL.userinfo_BLL bllUser = new BLL.userinfo_BLL();
        BLL.StoreInfo_BLL bllStore = new BLL.StoreInfo_BLL();
        BLL.OrderInfo_BLL bllOrder = new BLL.OrderInfo_BLL();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request["id"].ToString() == "login")
            {
                if (Request["name"] != null && Request["pwd"] != null)
                {
                    DataTable dt = new DataTable();
                    string where = " where uiid='" + Request["name"].ToString() + "'";
                    dt = bllUser.SelectUserInfo(where);
                    if (dt.Rows.Count > 0)
                    {
                        string name = Request["pwd"].ToString();
                        string t = name;
                        if (Request["pwd"].ToString() == dt.Rows[0]["uipwd"].ToString())
                        {
                            Response.Write("OK");
                            Session["name"] = Request["name"].ToString();
                        }
                        else
                        {
                            Response.Write("<script>alert(\"密码错误！\");</script>");
                        }
                    }
                    else
                    {
                        Response.Write("<script>alert(\"用户名不存在！\");</script>");
                    }

                }

            }

            else if (Request["id"].ToString() == "submit1")
            {
                if (Request["info"] != null && Request["adress"] != null && Request["money"] != null)
                {
                    try
                    {
                        string s = "";
                        string[] str = Request["info"].ToString().TrimEnd(',').Split(',');
                        for (int i = 0; i < str.Length - 1; i++)
                        {
                            s += str[i] + ",";
                        }
                        string t = s.TrimEnd(',');
                        db.ExecuteNonQuery("insert into OrderInfo (orderUserId,orderTime,orderContent,acceptTime,expressUser,expressTel,storeID,countPrice)values "
                                        + " ('" + Session["name"].ToString() + "',GETDATE(),'" + t + "',GETDATE(),'神一样的速度','110','" + Session["id"].ToString() + "','" + Request["money"].ToString() + "')");
                        db.ExecuteNonQuery("update usersongcaninfo set usdizhi='" + Request["adress"].ToString() + "' where usname='伟大的吃货'");
                        Response.Write("OK");
                    }
                    catch (Exception ex)
                    {
                        Response.Write("Error");
                    }
                }
            }
            else if (Request["id"].ToString() == "Usually")
            {

                try
                {

                    Response.Write(BindDataTr1());
                }
                catch (Exception ex)
                {

                }
            }
            else if (Request["id"].ToString() == "SaleNum")
            {

                try
                {

                    Response.Write(BindDataTr1());
                }
                catch (Exception ex)
                {

                }
            }

            else if (Request["id"].ToString() == "Evaluation")
            {

                try
                {

                    Response.Write(BindDataTr1());
                }
                catch (Exception ex)
                {

                }
            }
            else if (Request["id"].ToString() == "Foodtime")
            {

                try
                {
                    Response.Write(BindDataTr1());
                }
                catch (Exception ex)
                {

                }
            }
            else if (Request["id"].ToString() == "Usuall")
            {

                try
                {

                    Response.Write(BindDataTr1());
                }
                catch (Exception ex)
                {

                }
            }
            else if (Request["id"].ToString() == "txtStoreName")
            {

                try
                {
                    Response.Write(BindDataTr2());

                }
                catch (Exception ex)
                {

                }
            }

            else if (Request["id"].ToString() == "Allorders")
            {

                try
                {
                    Response.Write(BindDataTr3());

                }
                catch (Exception ex)
                {

                }
            }
            else if (Request["id"].ToString() == "Userinfos")
            {

                try
                {
                    Response.Write(BindDataTr4());

                }
                catch (Exception ex)
                {

                }
            }
        }
        /// <summary>
        /// 查询商店信息绑定Table(所有项)
        /// </summary>
        /// <returns></returns>
        public string BindDataTr1()
        {
            string str = "";
            DataTable dt = bllStore.SelectStoreInfo(WhSelectStore());
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
        /// <summary>
        /// 商店信息绑定Table(只有一项)
        /// </summary>
        /// <returns></returns>
        public string BindDataTr2()
        {
            string str = "";
            string where = " where storeName like  '%" + Request["storeName"].ToString() + "%'";
            DataTable dt = bllStore.SelectStoreInfo(where);
            if (dt.Rows.Count > 0)
            {

                str += "<tr><td><div class=\"tball\"><a class=\"atb1\" href=\"productInfo.aspx?ID=" + dt.Rows[0]["id"].ToString() + "\"><div class=\"tbimg\"><img class=\"image\" src='" + dt.Rows[0]["storeImg"].ToString() + "' title=" + dt.Rows[0]["storeMemo"].ToString() + " /></div><div class=\"tblbl1\"><label class=\"Name\">" + dt.Rows[0]["storeName"].ToString() + "</label><br /><br /><label class=\"tblbl2\"><label class=\"tblbl3\">★★★★★</label><br /><br />月销：" + dt.Rows[0]["saleNum"].ToString() + "份<br /><br /><label class=\"tblbl2\">0元起送/配送费1元</label><br /><br /><label>配送时间：" + dt.Rows[0]["foodtime"].ToString() + "分钟</label></label></div></a></div></td>"
                    + "<td></td><td></td><td></td></tr>"
                    + "<tr><td></td><td></td></tr><tr><td></td><td></td></tr><tr><td></td><td></td></tr>";

            }

            return str;
        }
        /// <summary>
        /// 查询订单信息绑定Table(所有项)
        /// </summary>
        /// <returns></returns>
        public string BindDataTr3()
        {
            string str = "";
            DataTable dt = db.SelectData("select OrderInfo.orderContent,orderTime,acceptTime,expressTel,StoreInfo.storeName,OrderInfo.countPrice  from OrderInfo left join StoreInfo on OrderInfo.storeID=StoreInfo.id where orderUserId='" + Session["name"].ToString() + "'");
            str += " <tr><td>菜  名</td><td>下单时间</td><td>接单时间</td><td>送餐人电话</td><td>店  名</td><td>总  额</td></tr>";
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str += "<tr><td>'" + dt.Rows[i]["orderContent"].ToString().Substring(0, 4) + "'</td><td>'" + dt.Rows[i]["orderTime"].ToString() + "'</td><td>'" + dt.Rows[i]["acceptTime"].ToString() + "'</td><td>'" + dt.Rows[i]["expressTel"].ToString() + "'</td><td>'" + dt.Rows[i]["storeName"].ToString() + "'</td><td>'" + dt.Rows[i]["countPrice"].ToString() + "'</td></tr>";
            }
            return str;
        }
        /// <summary>
        /// 查询用户信息绑定Table(所有项)
        /// </summary>
        /// <returns></returns>
        public string BindDataTr4()
        {
            string str = "";
            DataTable dt = db.SelectData(" select userinfo.uiid,usersongcaninfo.usname,usdizhi,ustel from userinfo left join usersongcaninfo on userinfo.id=usersongcaninfo.usid where uiid='" + Session["name"].ToString() + "'");
            str += "<tr><td> 账   号</td><td> 姓  名 </td><td> 地  址</td><td>电  话</td></tr>";
            if (dt.Rows.Count > 0)
            {
                str += "<tr><td>'" + dt.Rows[0]["uiid"].ToString() + "'</td><td>'" + dt.Rows[0]["usname"].ToString() + "'</td>><td>'" + dt.Rows[0]["usdizhi"].ToString() + "'</td><td>'" + dt.Rows[0]["ustel"].ToString() + "'</td></tr>";
            }
            return str;

        }
        protected string WhSelectStore()
        {
            string where = "";

            if (Request["id"].ToString() == "Usually" || Request["id"].ToString() == "Usuall")
            {
                where = "";
            }
            if (Request["id"].ToString() == "SaleNum")
            {
                where = " order by saleNum desc";
            }
            if (Request["id"].ToString() == "Evaluation")
            {
                where = " order by evaluation desc";
            }
            if (Request["id"].ToString() == "Foodtime")
            {
                where = " order by foodtime";
            }

            return where;
        }
    }
}