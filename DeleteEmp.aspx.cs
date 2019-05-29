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
    public partial class DeleteEmp : System.Web.UI.Page
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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string delete_query = "delete from employee where Empid=@Empid";
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand(delete_query))
                {
                    com.Parameters.AddWithValue("@Empid", Emplyoeeid.Text);
                    com.Connection = con;
                    con.Open();
                    if (com.ExecuteNonQuery() > 0)
                    {
                        Response.Write("Record Deleted Successfully");
                    }
                    else
                    {
                        Response.Write("Record Do Not Exist!");
                    }
                    con.Close();

                }
            }
        }
    }
}