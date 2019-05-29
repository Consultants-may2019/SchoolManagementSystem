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
    public partial class SCHOOL_INFORMATION : System.Web.UI.Page
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
                using (SqlCommand com = new SqlCommand("select Schoolid,Schoolname,Address,Statename,Cityname,Boardname,pincode,Phoneno,DateOfRegistration,Zone from School join States on School.Stateid=States.Stateid join City on School.Cityid = City.Cityid join Board on School.Boardid=Board.Boardid",con)) 
                {
                    {
                        con.Open();
                        SqlDataReader read = com.ExecuteReader();
                        GridView1.DataSource = read;
                        GridView1.DataBind();
                        con.Close();
                    }
                }
            }
        }
    }
}
    
