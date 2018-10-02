using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewDemo
{
    public partial class AccessCustomers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddStaff_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            HashAlgorithm algorithm = SHA512.Create();
            byte[] bytePassword = ASCIIEncoding.ASCII.GetBytes(txtPassword.Text);
            byte[] hashPassword = algorithm.ComputeHash(bytePassword);
            txthash.Text = Convert.ToBase64String(hashPassword);
            dao.RegisterCustomer(txtName.Text, txtContactNo.Text, txtAddress.Text, txtUsername.Text, txtPassword.Text, txthash.Text.ToString());
            txtMessage.Visible = true;
            txtMessage.Text = "The Customer was added sucessfully";
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            d1.Visible = true;
        }
    }
}