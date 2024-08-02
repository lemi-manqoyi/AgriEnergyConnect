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
    public partial class usersignup : System.Web.UI.Page
    {
        //holding connection value to pass to obj
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign-up button click event
        protected void Button_Click(object sender, EventArgs e)
        {
            if (CheckUsernameExists())
            {
                Response.Write("<script>alert('Username Already Exists. Try Again With A Different Username');</script>");
            }
            else
            {
                signup();
            }
          
            
        }

        bool CheckUsernameExists()
        {
            
           try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if(con.State != ConnectionState.Open)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("SELECT * from Employees where Username = '"+txtbxUsername.Text.Trim()+"';", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
                catch ( Exception ex)
                {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");
                return false;
                }
        }

        void signup(){
        //using try catch for unwanted errors and to prevent app from crashing incase database crashes
            try
            {
                //creating new object that passes connection string declared above
                SqlConnection con = new SqlConnection(strcon);
                //checking if there connection to database is closed, if so the openning
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO Employees(Name, Surname, Username, Password) values(@Name, @Surname, @Username, @Password)", con);

                cmd.Parameters.AddWithValue("@Name",txtbxName.Text.Trim());
                cmd.Parameters.AddWithValue("@Surname",txtbxSurname.Text.Trim());
                cmd.Parameters.AddWithValue("@Username",txtbxUsername.Text.Trim());
                cmd.Parameters.AddWithValue("@Password",txtbxPassword.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign-Up Successful. Go to Employee Login to Login');</script>");

            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('" +ex.Message+ "');</script>");

            }
        }
    }
}