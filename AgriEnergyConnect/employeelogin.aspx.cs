using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgriEnergyConnect
{
    public partial class employeelogin : System.Web.UI.Page
    {
         //holding connection value to pass to obj
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

           login();

        }

        void login()
        {
             try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Employees where Username ='"+txtbxUsername.Text.Trim()+"' AND Password='"+txtbxPassword.Text.Trim()+"' ;", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                //if theres anything wrong in the records, it will not return anything
                if (sdr.HasRows) { 
                    while(sdr.Read()) { 
                            Response.Write("<script>alert('Welcome back" +sdr.GetValue(0).ToString() + "');</script>");
                        //configuring employee sessions variables to control featurse available for employee
                            Session["username"] = sdr.GetValue(2).ToString();
                            Session["name"] = sdr.GetValue(0).ToString();
                            Session["role"] = "employee";
                        }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
            }
        }
    }
}