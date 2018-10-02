using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace MockExamMidterm
{
    public class DataAccessLayer
    {
        SqlConnection connection = null;
        String connectionString = null;
        

        public void AddOrder(String productName, int productPrice, string productCategory)
        {
               connectionString = ConfigurationManager.ConnectionStrings["dbMockExamConnectionString"].ConnectionString;
                connection = new SqlConnection(connectionString);
                connection.Open();

                String query = "Insert into tblProducts values('" + productName + "','" + productPrice + "','" + productCategory + "');";

                SqlCommand command = new SqlCommand(query, connection);

                int numberOfAffected = command.ExecuteNonQuery();

                connection.Close();

            
        }

        public object calculateTotal()
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMockExamConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Select sum(productPrice) from tblProducts";
            SqlCommand command = new SqlCommand(query, connection);
            object total =  command.ExecuteScalar();
            connection.Close();

            return total;
        }
    }
}