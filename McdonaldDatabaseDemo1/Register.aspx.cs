﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McdonaldDatabaseDemo1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            DataAccessLayer dao = new DataAccessLayer();
            if(txtPassword.Text == txtConfirmPassword.Text)
            {
                dao.registerUser(txtFirstname.Text, txtUserId.Text, txtPassword.Text);
            }
            else
            {
                txtConfirmPassword.Text = " ";
            }
            
        }
    }
}