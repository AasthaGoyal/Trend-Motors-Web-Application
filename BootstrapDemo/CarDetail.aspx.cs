using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace BootstrapDemo
{
    public partial class WebForm8 : System.Web.UI.Page
    {
      
        public int id, qty;

        DataTable dt = new DataTable();
        public string make, model, year, price, quantityThere, carId;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(Request.QueryString["carId"]);

            //qty = get_qty(id);

            //if (qty == 0)
            //{
            //    lblMessage.Text = "The Car is currently not available";
            //    txtQuantity.Enabled = false;
            //    btnAddCart.Enabled = false;
            //}

        }
    }
}