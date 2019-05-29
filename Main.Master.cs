using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (Convert.ToInt32(Session["roleid"]) == 3)
 
             {
 
                 insert.Visible = false;
 
                 update.Visible = false;
 
                  delete.Visible = false;
                srecord.Visible = false;
  
              }
  
      
            else if (Convert.ToInt32(Session["roleid"]) == 2)
            {
                deleteemp.Visible = false;
                insertemp.Visible = false;
                updateemp.Visible = false;
                erecord.Visible = false;
            } 

        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void btnInsertEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employee.aspx");
        }

        protected void btnUpdateEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateEmp.aspx");
        }

        protected void btnDeleteEmp_Click(object sender, EventArgs e)
        {
            Response.Redirect("DeleteEmp.aspx");
        }
    }
}