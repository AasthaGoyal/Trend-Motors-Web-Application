using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BootstrapDemo
{
    public class DataAccessLayer
    {

        public SqlConnection connection = null;
        String connectionString = null;//they can be accessed in multiple methods

        public void SellaCar(int id, int soldprice, string name, string phoneNo, string address)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblSoldCars values ('" + id + "','" + soldprice + "','" + name + "','" + phoneNo + "','" + address + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For three pictures
        public void addCarForSale(string image1, string image2, string image3, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For four pictures
        public void addCar4Pictures(string image1, string image2, string image3, string image4, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, carImage4, model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" +  model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For 5 pictures
        public void addCar5Pictures(string image1, string image2, string image3, string image4, string image5, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, carImage4, carImage5, model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" + image5 + "','" + model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For 6 pictures
        public void addCar6Pictures(string image1, string image2, string image3, string image4, string image5, string image6, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, carImage4, carImage5,carImage6,  model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" + image5 + "','" + image6 + "','" + model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For 7 pictures
        public void addCar7Pictures(string image1, string image2, string image3, string image4, string image5, string image6, string image7, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, carImage4, carImage5, carImage6, carImage7,  model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" + image5 + "','" + image6 + "','" + image7 + "','" + model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        //For 8 pictures
        public void addCar8Pictures(string image1, string image2, string image3, string image4, string image5, string image6, string image7, string image8, string model, string make, string year, string description, string kms, string engineSize, string fuel, string seats, int price, int quantity, int sellingPrice, string promotion)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblCars(carImage1, carImage2, carImage3, carImage4, carImage5,carImage6, carImage7, carImage8, model, make, carYear, carDescription,kms, engineSize, fuel, seats, price, carQuantity, buyingPrice , promotion)  values ('" + image1 + "','" + image2 + "','" + image3 + "','" + image4 + "','" + image5 + "','" + image6 + "','" + image7 + "','" + image8 + "','" +model + "','" + make + "','" + year + "','" + description + "','" + kms + "','" + engineSize + "','" + fuel + "','" + seats + "','" + price + "','" + quantity + "','" + sellingPrice + "','" + promotion + "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }



        public object loginUser(String userId, string password)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Select firstName from tblStaff where (staffUsername='" + userId + "' and staffPassword='" + password + "');";

            SqlCommand command = new SqlCommand(query, connection);
            object name = command.ExecuteScalar();

            return name;

        }

        public void registerUser (String firstName, String lastName, String position, string contactNo, string emailId, string username, string password, string hashPassword)
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "Insert into tblStaff values('" + firstName + "','" + lastName + "','" + position + "','" + contactNo + "','" + emailId + "','" + username + "','" + password + "','" + hashPassword + "');";

            SqlCommand command = new SqlCommand(query, connection);

            int numberOfAffected = command.ExecuteNonQuery();

            connection.Close();

        }


        public void DecreaseQuantity(int id)
        {


            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "update tblCars set carQuantity = carQuantity - 1 where carId ='" + id + "'";
            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();


        }

        public void ApplyFinance(string title, string firstname, string lastname, string dob, string maritalStatus, int noDep, string currentStatus, string phoneNo, string email, string livingSituation, string address, string suburb, string city, int postcode, int addressTime, string rentPayment, string paymentFreq, string dlType, string dlNumber, int dlVersion, string empType, string occupation, string companyname, string empPhoneNo, string income, string incomeFreq, string timeAtJob, string cashInBank, string houseValue, string hamountOwned, string hweeklyPayments, string vehiclevalue, string vamountOwned, string vweeklyPayments, string investmentValue, string iamountOwned, string iweeklyPayments, string othervalue, string oamountOwned, string oweeklyPayment, string hpamountOwned, string hpweeklyPayments, string plamountOwned, string plweeklyPayments, string ccamountOwned, string ccweeklyPayments, string creditRatings, string notes )
        {
            connectionString = ConfigurationManager.ConnectionStrings["dbCardealerConnectionString"].ConnectionString;
            connection = new SqlConnection(connectionString);
            connection.Open();

            String query = "insert into tblFinance values ('" + title + "','" + firstname + "','" + lastname + "','" + dob + "','" + maritalStatus + "','" + noDep + "','" + currentStatus + "','" + phoneNo + "','" + email + "','" + livingSituation + "','" + address + "','" + suburb + "','" + city + "','" + postcode + "','" + addressTime + "','" + rentPayment + "','" + paymentFreq+ "','" + dlType + "','" + dlNumber + "','" + dlVersion + "','" + empType + "','" + occupation + "','" + companyname + "','" + empPhoneNo + "','" + income + "','" + incomeFreq + "','" + timeAtJob +"','" + cashInBank + "','" + houseValue + "','" + hamountOwned + "','" + hweeklyPayments + "','" + vehiclevalue + "','" + vamountOwned + "','" + vweeklyPayments + "','" + investmentValue + "','" + iamountOwned + "','" + iweeklyPayments + "','" + othervalue + "','" + oamountOwned + "','" + oweeklyPayment + "','" + hpamountOwned + "','" + hpweeklyPayments + "','" + plamountOwned + "','" + plweeklyPayments + "','" + ccamountOwned + "','" + ccweeklyPayments + "','" + creditRatings + "','" + notes +  "')";

            SqlCommand command = new SqlCommand(query, connection);
            command.ExecuteNonQuery();
        }
    }
}