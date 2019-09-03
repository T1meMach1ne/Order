using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class Login : System.Web.UI.Page
    {

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
                imgAddress.Visible = true;
                btnClose.Visible = true;

            }
        }


        protected void btnRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }

        protected void Refresh_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void StoreSelect_Click(object sender, EventArgs e)
        {
            Response.Redirect("Server.aspx");
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            if (Session["name"] == null)
            {

            }
            else
            {
                Session["name"] = null;
            }
            lbllogin.Text = "";
        }

        protected void imgAddress_Click(object sender, ImageClickEventArgs e)
        {
            Session["Address"] = txtAddress.Value;
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
    }
}