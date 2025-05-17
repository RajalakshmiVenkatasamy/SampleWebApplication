using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace SampleWebApplication
{
    public partial class EmployeeDetails : System.Web.UI.Page
    {

        SqlConnection sqlconn = new SqlConnection("Data Source=sathish\\SQLEXPRESS;Initial Catalog=EmployeeDatabase1;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataSet ds = CreateDataset();
                grdStudentData.DataSource = ds.Tables["Student"];
                grdStudentData.DataBind();

            }

        }
        private DataTable studentdetails()
        {
            DataTable student = new DataTable("Student");
            AddNewColumn(student,"System.Int32","Id");
            AddNewColumn(student,"System.String","name");
            AddNewColumn(student, "System.Int32", "age");
            AddNewRow(student, 1, "raji", 25);
            AddNewRow(student, 2, "Abi", 25);
            AddNewRow(student, 3, "Sree", 25);

            return student;
        }

        private void AddNewColumn(DataTable datatable, string columntype, string columnName )
        {
            datatable.Columns.Add(columnName, Type.GetType(columntype));
           
        }

        private void AddNewRow(DataTable Studentdata,int Id, string Name,int Age)
        { 
            DataRow row = Studentdata.NewRow();
            row["id"] = Id;
            row["name"] = Name;
            row["age"] = Age;
            Studentdata.Rows.Add(row);
                
        }

        private DataSet CreateDataset()
        {
            DataSet ds = new DataSet();
            ds.Tables.Add(studentdetails());
            return ds;
        }
        
        protected void btnClick_Click(object sender, EventArgs e)
        {
            sqlconn.Open();
            SqlCommand sqlcmd = new SqlCommand(" select * from Employee1", sqlconn);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlcmd);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            GrdData.DataSource = ds.Tables[0];
            GrdData.DataBind();
            sqlconn.Close();
           
        }
    }
}