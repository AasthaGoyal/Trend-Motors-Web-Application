using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

using System.Security.Cryptography;

namespace SecurityDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HashAlgorithm algorithm = SHA512.Create();
            byte[] bytePassword = ASCIIEncoding.ASCII.GetBytes(txtPassword.Text);
            byte[] hashPassword = algorithm.ComputeHash(bytePassword);
            lblHash.Text = Convert.ToBase64String(hashPassword);
        }
    }
}