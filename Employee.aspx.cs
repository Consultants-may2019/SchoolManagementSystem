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
    public partial class Employee : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                FillSchool();
                FillDesignation();
            }
        }
        void FillSchool()
        {
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand("select Schoolid,Schoolname from School", con))
                {
                    con.Open();
                    SqlDataReader read = com.ExecuteReader();
                    School.DataSource = read;
                    School.DataTextField = "Schoolname";
                    School.DataValueField = "Schoolid";
                    School.DataBind();
                    con.Close();
                }
            }
        }
        void FillDesignation()
        {
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand("select * from Designation", con))
                {
                    con.Open();
                    SqlDataReader read = com.ExecuteReader();
                    Ds.DataSource = read;
                    Ds.DataTextField = "Desname";
                    Ds.DataValueField = "Desid";
                    Ds.DataBind();
                    con.Close();
                }
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string in_query = "insert into employee(Firstname,Lastname, Email,Addres,Phoneno,Schoolid,Desid) Values(@Firstname,@Lastname,@Email,@Addres,@Phoneno,@Schoolid,@Desid)";
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand(in_query))
                {
                    com.Parameters.AddWithValue("@Firstname", txtEmployeeFirstName.Text);
                    com.Parameters.AddWithValue("@Lastname", TxtEmployeeLastName.Text);
                    com.Parameters.AddWithValue("@Email", Email.Text);
                    com.Parameters.AddWithValue("@Addres", Address.Text);
                    com.Parameters.AddWithValue("@Phoneno", TxtPhone.Text);
                    com.Parameters.AddWithValue("@Schoolid", School.Text);
                    com.Parameters.AddWithValue("@Desid", Ds.Text);
                    com.Connection = con;
                    con.Open();
                    if (com.ExecuteNonQuery() > 0)
                    {
                        Response.Write("Record Inserted Successfully");
                    }
                    con.Close();
                }
            }
        }
    }
}

