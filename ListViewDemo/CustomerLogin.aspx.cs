using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewDemo
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
       
            string returnName;

            protected void Page_Load(object sender, EventArgs e)
            {

            }

        public void RegisterCustomer(String name, string contactNo, string address, string username, string password, string hashPassword)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Insert into tblCustomers values('" + name + "','" + contactNo + "','" + address + "','" + username + "','" + password + "','" + hashPassword + "');";

            SqlCommand command = new SqlCommand(query, connection);

            int numberOfAffected = command.ExecuteNonQuery();

            connection.Close();

        }

        public void resetPasswordCust(String email, string password, string hashPassword)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "update tblCustomers set custPassword = '" + password + "' where username ='" + email + "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();

            String query2 = "update tblCustomers set hashPassword='" + hashPassword + "' where username ='" + email + "'";
            SqlCommand cmd = new SqlCommand(query2, connection);
            cmd.ExecuteNonQuery();




        }

        public object CustomerLogin(String userId, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Select name from tblCustomers where (username='" + userId + "' and custPassword='" + password + "');";

            SqlCommand command = new SqlCommand(query, connection);
            object name = command.ExecuteScalar();

            return name.ToString();

        }
        protected void btnLogin_Click(object sender, EventArgs e)
            {
               // DataAccessLayer dao = new DataAccessLayer();
                returnName = CustomerLogin(txtUsername.Text, txtPassword.Text).ToString();
                if (returnName == " ")
                {
                    lblMessage.Text = "Invalid username or password";

                }
                else
                {
                    Response.Redirect("Cars.aspx");


                }
            }
        }
    
}