using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Order
{
    public partial class MyOrde : System.Web.UI.Page
    {
        DBHelp.DBHelper db = new DBHelp.DBHelper();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string aa()
        {
            float num = 0;
            string s = "";
            string[] str = Request["backurl"].ToString().TrimEnd('±').Split('±');
            for (int i = 0; i < str.Length - 1; i++)
            {
                s += "<tr><td>" + str[i].Split('^')[0] + "</td><td>" + str[i].Split('^')[1] + "</td><td>" + str[i].Split('^')[2] + "</td><td>" + (float.Parse(str[i].Split('^')[2]) * float.Parse(str[i].Split('^')[1])).ToString() + "</td></tr>";
                num = float.Parse(str[i].Split('^')[2]) * float.Parse(str[i].Split('^')[1]) + num;
            }



            DataTable dt = db.SelectData(" select * from usersongcaninfo where usname=" + Session["name"].ToString());//where usname=
            if (dt.Rows.Count > 0)
            {
                TextBox3.Text = dt.Rows[0]["usdizhi"].ToString();
            }
            else
            {
                TextBox3.Text = "请填写地址";
            }
            Label1.Text = num.ToString();
            
            return s;
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

        protected void Refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void StoreSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Server.aspx");
        }

        protected void btnRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }
    }
}