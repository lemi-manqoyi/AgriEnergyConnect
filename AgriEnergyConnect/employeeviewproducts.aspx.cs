using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgriEnergyConnect
{
    public partial class employeeviewproducts : System.Web.UI.Page
    {
         //holding connection value to pass to obj
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if(con.State != ConnectionState.Open)
                    {  
                         con.Open(); 
                    }
                    string data = "SELECT * from Products;";
                    SqlCommand cmd = new SqlCommand(data, con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    GridView1.DataSource= dt;
                    GridView1.DataBind();


                }
                catch ( Exception ex)
                {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
                
                }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            

        }


    }
}