using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace AgriEnergyConnect
{
    public partial class farmerlogin : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("SELECT * from Farmers where Username ='"+txtbxUsername.Text.Trim()+"' AND Password='"+txtbxPassword.Text.Trim()+"' ;", con);
                SqlDataReader sdr = cmd.ExecuteReader();
                //if theres anything wrong in the records, it will not return anything
                if (sdr.HasRows) { 
                    while(sdr.Read()) { 
                        Response.Write("<script>alert('Welcome back" +sdr.GetValue(0).ToString() + "');</script>");
                        //configuring farmer sessions variables to control featurse available for farmer
                            Session["username"] = sdr.GetValue(3).ToString();
                            Session["name"] = sdr.GetValue(0).ToString();
                            Session["role"] = "farmer";
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