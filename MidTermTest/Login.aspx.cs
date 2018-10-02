using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidTermTest
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            string userName = dao.loginUser(txtUserId.Text, txtPassword.Text);
           if( txtPassword.MaxLength < 8)
            {
                if (userName == "null")
                {
                    txtErrorMessage.Visible = true;
                    txtErrorMessage.Text = "Invalid Username and Password Combination!!!";
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else 
            {
                txtPasswordError.Visible = true;
                txtPasswordError.Text = "The Password must be atleast 8 characters long";
            }

        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}