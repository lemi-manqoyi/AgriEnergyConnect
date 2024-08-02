using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgriEnergyConnect
{
    public partial class farmeraddproducts : System.Web.UI.Page
    {
        //holding connection value to pass to obj
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPost_Click(object sender, EventArgs e)
        {
            
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State != ConnectionState.Open)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO Products(FarmName, Name, Category, ProductionDate) values(@FarmName, @Name,@Category,@ProductionDate)", con);

                cmd.Parameters.AddWithValue("@FarmName", txtbxFarmName.Text.Trim());
                cmd.Parameters.AddWithValue("@Name", txtbxProductName.Text.Trim());
                cmd.Parameters.AddWithValue("@Category", txtbxCategory.Text.Trim());
                cmd.Parameters.AddWithValue("@ProductionDate",txtbxDate.Text);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Products Successfully Added');</script>");
                Response.Redirect("employeeviewproducts.aspx");


            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
            }
        }
    }
}