using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CookiesDemo
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //validate the data
            //verify from database

            //now store in cookie if user is verified successfully
            HttpCookie user = new HttpCookie("user");
            user["userName"] = txtUsername.Text;

            //store as much data as u want
            user.Expires = DateTime.Now.AddDays(1d);

            //save the cookie in the user's computer so u can retrive later
            Response.Cookies.Add(user);

        }
    }
}