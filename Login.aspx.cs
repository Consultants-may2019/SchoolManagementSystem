using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Sub_Click(object sender, EventArgs e)
        {
            Session["roleid"] = role.Text;
            Response.Redirect("~/Dashboard.aspx");
        }

        protected void role_TextChanged(object sender, EventArgs e)
        {

        }
    }
}