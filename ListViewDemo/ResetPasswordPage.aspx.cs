using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewDemo
{
    public partial class ResetPasswordPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            HashAlgorithm algorithm = SHA512.Create();
            byte[] bytePassword = ASCIIEncoding.ASCII.GetBytes(txtPassword.Text);
            byte[] hashPassword = algorithm.ComputeHash(bytePassword);
            string hash = Convert.ToBase64String(hashPassword);
            dao.resetPasswordCust(txtUsername.Text, txtPassword.Text, hash);
            lblMessage.Text = "The Password was changed successfully!";
        }
    }
}