using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace SampleWebApplication
{
    public partial class EmployeeManagement : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection("Data Source=sathish\\SQLEXPRESS;Initial Catalog=EmployeeDatabase1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            sqlconn.Open();
            if (rdblistGener.SelectedIndex != -1)
            {
                string InsertQuery = "Insert Into Employee1(Id,Name,Age,Gender) values(" + txtId.Text + ",'" + txtEmployeeName.Text + "'," + txtAge.Text + ",'" + rdblistGener.SelectedValue + "') ";
                SqlCommand cmd = new SqlCommand(InsertQuery, sqlconn);
                cmd.ExecuteNonQuery();
            }
            else
            {
                Response.Write("Please select the gender");
            }
           
            sqlconn.Close();    
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            sqlconn.Open();
            string UpdateQuery = "Update employee1 set Age=" + txtAge.Text + " where Id=" + txtId.Text + " ";
            SqlCommand cmd=new SqlCommand(UpdateQuery,sqlconn);
            cmd.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            sqlconn.Open();
            string DeleteQuery = "delete from employee1 where id=" + txtId.Text + " ";
            SqlCommand cmd=new SqlCommand(DeleteQuery,sqlconn);
            cmd.ExecuteNonQuery();
            sqlconn.Close();
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            sqlconn.Open();
            string LoadGridview = "select * from employee1";
            SqlCommand cmd = new SqlCommand(LoadGridview, sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet("Employee1");
            adapter.Fill(ds);           
            grd_EmployeeManagement.DataSource = ds;
            grd_EmployeeManagement.DataBind();
        }
           
    }
}