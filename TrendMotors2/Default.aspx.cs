using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TrendMotors2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        public string make, model;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "viewDetail")
            {
                Response.Redirect("CarDetails.aspx?id=" + e.CommandArgument.ToString());    
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            
            

                make = dpMake.SelectedItem.ToString();
                model = dpModel.SelectedItem.ToString();
                Response.Redirect("CarByModel.aspx?model=" + model );
            Response.Redirect("CarByModel.aspx?make =" + make);
            }
        }

       
    }
