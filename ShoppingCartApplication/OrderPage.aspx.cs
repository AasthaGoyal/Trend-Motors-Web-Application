using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace ShoppingCartApplication
{
    public partial class OrderPage : System.Web.UI.Page
    {
        Product selectedProduct = new Product();
        public string selectedName;
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //    ddlProducts.DataBind();

            //selectedProduct = this.GetSelectedProduct();
            //lblName.Text = selectedProduct.Name;
            //lblShortDescription.Text = selectedProduct.ShortDescription;
            //lblLongDescription.Text = selectedProduct.LongDescription;
            //lblUnitPrice.Text = selectedProduct.UnitPrice.ToString();
            //imgProduct.ImageUrl = "Images/" + selectedProduct.ImageFile;
        }

        //private Product GetSelectedProduct()
        //{
        //    DataView productsTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        //    productsTable.RowFilter = string.Format("productId='{0}'", ddlProducts.SelectedValue);
        //    DataRowView row = productsTable[0];

        //    Product p = new Product();
        //    p.ProductId = row["productId"].ToString();
        //    p.Name = row["name"].ToString();
        //    p.ShortDescription = row["shortDescription"].ToString();
        //    p.LongDescription = row["longDescription"].ToString();
        //    p.UnitPrice = (decimal)row["unitPrice"];
        //    p.ImageFile = row["imageFile"].ToString();
        //    return p;
        //}

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if(selectedName == selectedProduct.Name)
            {

            
         
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.ProductId];

                if(cartItem == null)
                {
                    cart.AddItem(selectedProduct, Convert.ToInt32(txtQuantity.Text));

                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("~/Cart.aspx");

            }
               
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {

        }

        protected void ddlProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            selectedName = ddlProducts.SelectedItem.ToString();

        }
    }
}