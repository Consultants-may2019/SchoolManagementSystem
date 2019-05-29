using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Design
{
    public partial class UpdateEmp : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string up_query = "update employee set Firstname=@Firstname,Lastname=@Lastname,Email=@Email,Addres=@Addres,Phoneno=@Phoneno,Schoolid=@Schoolid,Desid=@Desid where Empid=@Empid";
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand(up_query))
                {
                    com.Parameters.AddWithValue("@Empid",Emplyoeeid.Text);
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

        protected void Emplyoeeid_TextChanged(object sender, EventArgs e)
        {
            using (SqlConnection con = GetSqlConnection())
            {
                using (SqlCommand com = new SqlCommand("select * from employee where Empid=@Empid", con))
                {
                    com.Parameters.AddWithValue("@Empid", Emplyoeeid.Text);
                    con.Open();

                    SqlDataAdapter ada = new SqlDataAdapter();
                    ada.SelectCommand = com;
                    DataSet ds = new DataSet();
                    ada.Fill(ds, "Employee");
                    DataTable dt = ds.Tables["Employee"];
                    if (dt.Rows.Count < 0)
                    {
                        Response.Write("Record Do Not Exit!");

                    }
                    else
                    {
                        Panel1.Visible = true;
                        Panel2.Visible = true;
                        Panel3.Visible = true;
                        Panel4.Visible = true;
                        Panel5.Visible = true;
                        Panel6.Visible = true;
                        Panel7.Visible = true;


                        Button1.Visible = true;

                    }
                }
            }
        }
        }
    }