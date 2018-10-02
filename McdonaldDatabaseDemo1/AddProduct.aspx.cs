using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace McdonaldDatabaseDemo1
{
    public partial class AddProduct : System.Web.UI.Page
    {
        ProductsDAL dalObject = new ProductsDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            int number = dalObject.GetProductID();
            txtProductId.Text = number.ToString();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
         
            dalObject.AddProduct(txtProductId.Text, txtName.Text, txtDescription.Text, txtImage.Text, txtPrice.Text, txtCategory.Text);
            Response.Write("Product saved succesfully");


           
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            
        }
    }
}