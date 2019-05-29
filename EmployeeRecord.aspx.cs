using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design
{
    public partial class EmployeeRecord : System.Web.UI.Page
    {

        static string GetConnectionString()
        {
            string ConnectionString = ConfigurationManager.ConnectionStrings["Connection"].ToString();
            return ConnectionString;
        }
        static SqlConnection GetSqlConnection()
        {
            return new SqlConnection(GetConnectionString());
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand("select Empid,Firstname,Lastname,Email,Addres,employee.Phoneno,Schoolname,Desname from employee join School on employee.Schoolid=School.Schoolid join Designation on employee.Desid = Designation.Desid", con))
                {
                    {
                        con.Open();
                        SqlDataReader read = com.ExecuteReader();
                        Emprecord.DataSource = read;
                        Emprecord.DataBind();
                        con.Close();
                    }
                }
            }
        }
    }
}