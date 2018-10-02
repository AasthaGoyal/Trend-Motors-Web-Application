using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;

namespace McdonaldDatabaseDemo1
{
    public class ProductsDAL
    {

        SqlConnection connection = null;
        String connectionString = null;//they can be accessed in multiple methods

        public ProductsDAL()
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbMcdonaldConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();
        }

        public int AddProduct(String id, string productName, string productDescription, string image, String price, string productcategory)
        {
            int productId = int.Parse(id);
            Decimal productPrice = Decimal.Parse(price);

            string query = "Insert into tblProducts values('" + id + "','" + productName + "','" + productDescription + "','" + image + "','" + price + "','" + productcategory + "');";
            SqlCommand command = new SqlCommand(query, connection);
            return command.ExecuteNonQuery();

        }

        public int GetProductID()
        {
            string query = "Select (max(productId) + 1) from tblProducts ";
            SqlCommand command = new SqlCommand(query, connection);
            return  (int)command.ExecuteScalar();

        }
    }
}