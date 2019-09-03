using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Order
{
    public partial class TypeInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["name"] == null)
                {

                }
                else {
                    lbllogin.Text = Session["name"].ToString();
                }
            }
        }

        protected void btnClose_Click(object sender, EventArgs e)
        {
            Session["name"] = null;
            lbllogin.Text = "";
            Response.Redirect("Main.aspx");
        }

        protected void btnRegisters_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserRegister.aspx");
        }
    }
}