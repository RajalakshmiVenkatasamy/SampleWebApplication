using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SampleWebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnpartial_Click(object sender, EventArgs e)
        {
            string time = DateTime.Now.ToLongTimeString(); 
            lblpartial.Text = "Showing time from panel" + time; 
            lbltotal.Text = "Showing time from outside" + time;
        }

        protected void btntotal_Click(object sender, EventArgs e)
        {
            string time = DateTime.Now.ToLongTimeString();
            lblpartial.Text = "Showing time from panel" + time; 
            lbltotal.Text = "Showing time from outside" + time;
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }
    }
}