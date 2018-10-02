using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McdonaldDatabaseDemo1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
           string returnName =  dao.loginUser(txtUserId.Text, txtPassword.Text);
            if (returnName == " ")
                Response.Write("Invalid Username/password");
            else
                Response.Write("Welcome " + returnName);

        }
    }
}