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
            //configuring the sessions
            try
            {
                //if session has no one logged in
                if (string.IsNullOrEmpty((string)Session["role"]))
                {
                    lkbtnEmployeeLogin.Visible = true;
                    lkbtnEmployeeSignUp.Visible = true;
                    lkbtnViewProducts.Visible = true;

                    lkbtnLogout.Visible = false;
                    lkbtnProfile.Visible = false;

                    lkbtnFarmerLogin.Visible = false;
                    lkbtnFarmerAddProducts.Visible = false;
                }
                //if session has employee logged in
                else if(Session["role"].Equals("employee"))
                {
                    lkbtnEmployeeLogin.Visible = false;
                    lkbtnEmployeeSignUp.Visible = false;
                    lkbtnViewProducts.Visible = true;

                    lkbtnLogout.Visible = true;
                    lkbtnProfile.Visible = true;
                    lkbtnProfile.Text = "Hello "+Session["name".ToString()];


                    lkbtnFarmerLogin.Visible = true;
                    lkbtnFarmerAddProducts.Visible = false;

                }
                //if session has farmer logged in
                else if(Session["role"].Equals("farmer"))
                {
                    lkbtnEmployeeLogin.Visible = false;
                    lkbtnEmployeeSignUp.Visible = false;
                    lkbtnViewProducts.Visible = true;

                    lkbtnLogout.Visible = true;
                    lkbtnProfile.Visible = true;
                   
                    lkbtnProfile.Text = "Hello "+Session["name".ToString()];

                    lkbtnFarmerLogin.Visible = false;
                    lkbtnFarmerAddProducts.Visible = true;
                }
            }
            catch(Exception ex)
            { 
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
            }
        }

        protected void lkbtnFarmerLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("farmerlogin.aspx");
        }

        protected void lkbtnEmployeeLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeelogin.aspx");
        }

        protected void lkbtnEmployeeSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void lkbtnViewProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("employeeviewproducts.aspx");
        }

        protected void lkbtnLogout_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Response.Redirect("homepage.aspx");
        }

        protected void lkbtnProfile_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals("farmer"))
            {
                Response.Redirect("farmerprofile.aspx");
            }
            else if (Session["role"].Equals("employee"))
            {
                Response.Redirect("employeeprofile.aspx");
            }
        }

        protected void lkbtnFarmerAddProducts_Click(object sender, EventArgs e)
        {
            Response.Redirect("farmeraddproducts.aspx");
        }
    }
}