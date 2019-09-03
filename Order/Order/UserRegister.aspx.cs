using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace Order
{
    public partial class Login1 : System.Web.UI.Page
    {
        BLL.userinfo_BLL bll = new BLL.userinfo_BLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            DataTable dt = new DataTable();
            string where = " where uiid='" + txtUserName.Text + "'";
            dt = bll.SelectUserInfo(where);
            Model.userinfo_Model model = new Model.userinfo_Model();
            if (dt.Rows.Count <= 0)
            {
                if (txtPwd.Text == txtPwds.Text)
                {
                    model.uiid = txtUserName.Text;
                    model.uipwd = txtPwd.Text;
                    bll.AddUserInfo(model);
                    Response.Write("<script>alert('注册成功！');</script>");
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    Response.Write("<script>alert('两次密码不一致！');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('用户名已存在！');</script>");
            }

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