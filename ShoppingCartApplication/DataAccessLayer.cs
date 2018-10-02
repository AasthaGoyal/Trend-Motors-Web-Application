using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;

namespace ShoppingCartApplication
{
    public class DataAccessLayer
    {
        SqlConnection connection = null;
        String connectionString = null;

        public int returnId (string name)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbTrendMotorsConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "select productId from tblProduct where name='" + name + "'";

            SqlCommand command = new SqlCommand(query, connection);
            return Convert.ToInt32(command.ExecuteScalar());
        }
    }
}