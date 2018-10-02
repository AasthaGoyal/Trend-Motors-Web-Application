using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace TrendMotors2
{
    public class DataAccessLayer
    {

        SqlConnection connection = null;
        String connectionString = null;//they can be accessed in multiple methods

        public void addCarForSale(String name, String make, String year, String image1, string image2, string image3, string image4, string image5, int price, string description, int kms)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbTrendMotorsConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" + image5 + "','" + name + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + price + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        public void addReview (string name,  string review, string image, int stars)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbTrendMotorsConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblReviews values ('" + name + "','" + review + "','" + image + "','" + stars + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();

        }

        public void registerUser(String firstName, String lastName, String position, string contactNo, string emailId, string username, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbTrendMotorsConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Insert into tblStaff values('" + firstName + "','" + lastName + "','" + position + "','" + contactNo + "','" + emailId + "','" + username + "','" + password + "');";

            SqlCommand command = new SqlCommand(query, connection);

            int numberOfAffected = command.ExecuteNonQuery();

            connection.Close();

        }

        public object loginUser(String userId, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbTrendMotorsConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Select firstName from tblStaff where (staffUsername='" + userId + "' and staffPassword='" + password + "');";

            SqlCommand command = new SqlCommand(query, connection);
            object name = command.ExecuteScalar();

            return name;

        }

    }


}