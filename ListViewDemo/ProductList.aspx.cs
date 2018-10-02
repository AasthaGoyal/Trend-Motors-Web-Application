using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ListViewDemo
{
    public partial class ProductList : System.Web.UI.Page
    {
        public string name, category, searchBy;
        //int id;
        protected void Page_Load(object sender, EventArgs e)
        {
             searchBy = DropDownList2.SelectedItem.ToString();
            if (searchBy == "Name")
            {
                txtName.Visible = true;
                dpCategory.Visible = false;
               
            }
            else if (searchBy == "Category")
            {
                dpCategory.Visible = true;
                txtName.Visible = false;
            
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
           // Response.Redirect("ProductDetail.aspx?category='" + dpCategory.SelectedItem.ToString());


            category = dpCategory.SelectedItem.ToString();
            Response.Redirect("ProductShowList.aspx?productCategory=" + category);

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}