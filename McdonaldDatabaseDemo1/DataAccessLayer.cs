using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace McdonaldDatabaseDemo1
{
    public class DataAccessLayer
    {
        SqlConnection connection = null;
        String connectionString = null;//they can be accessed in multiple methods

        public void registerUser(String firstName, String userId, String userPassword)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMcdonaldConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Insert into tblUserLogin values('" + userId + "','" + userPassword + "','" + firstName + "');";

            SqlCommand command = new SqlCommand(query, connection);

            int numberOfAffected = command.ExecuteNonQuery();

            //in case we have select statenment then (either or )
            // SqlDataReader reader = command.ExecuteReader();
            connection.Close();

        }

        public String loginUser(String userId, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMcdonaldConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Select firstName from tblUserLogin where (userEmailId='" + userId + "' and userpassword='" + password + "');";

            SqlCommand command = new SqlCommand(query, connection);
            string name = command.ExecuteScalar().ToString();

            return name;

        }
    }
}