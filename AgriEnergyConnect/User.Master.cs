using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgriEnergyConnect
{
    public partial class User : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("farmerlogin.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeelogin.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeviewproducts.aspx");
        }
    }
}