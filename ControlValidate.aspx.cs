using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class ControlValidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile )
            {
                FileUpload1.SaveAs("D:\\New\\" +FileUpload1.FileName);
               
            }

                Label1.Text= Calendar1.SelectedDate.ToShortDateString();
           

        }
    }
}