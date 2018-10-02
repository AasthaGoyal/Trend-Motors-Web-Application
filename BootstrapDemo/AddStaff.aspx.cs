using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;

namespace BootstrapDemo
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            HashAlgorithm algorithm = SHA512.Create();
            byte[] bytePassword = ASCIIEncoding.ASCII.GetBytes(Request.Form["txtPassword"]);
            byte[] hashPassword = algorithm.ComputeHash(bytePassword);
            string hash = Convert.ToBase64String(hashPassword);
            //txtHashPassword.Text = hash;
            dao.registerUser(Request.Form["txtFirstName"], Request.Form["txtLastName"], Request.Form["txtPosition"], Request.Form["txtContactNo"], Request.Form["txtEmailId"], Request.Form["txtUsername"], Request.Form["txtPassword"], hash);
            // txtMessage.Text = "The staff has been registered successfully";
        }
    }
}