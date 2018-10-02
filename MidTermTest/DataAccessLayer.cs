using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace MidTermTest
{
    public class DataAccessLayer
    {
        SqlConnection connection = null;
        String connectionString  = null;

        public void insertUser(string userId, string name, string password, string country, string emailId)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMidTermConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Insert into tblUsers values('" + userId + "','" + name + "','" + password + "','" + country + "','" + emailId + "');";

            SqlCommand command = new SqlCommand(query, connection);

            command.ExecuteNonQuery();


            connection.Close();

        }

        public string loginUser(string userId, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMidTermConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();
            String returnName;
            String query = "Select name from tblUsers where (userId = '" + userId + "' and password='" + password + "')";
            SqlCommand command = new SqlCommand(query, connection);
            //object name = command.ExecuteScalar();
            if (command.ExecuteScalar() != null)
            {
                 returnName = command.ExecuteScalar().ToString();
            }
            else
            {
                returnName = "null";
            }
            
            return returnName;
        }
    }
        
    
}

        
