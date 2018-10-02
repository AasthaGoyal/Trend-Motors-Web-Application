using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BootstrapDemo
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if(dpPrice.SelectedItem.ToString() != "All" && dpYear.SelectedItem.ToString() !="All")
            {
                string initial, end;
                string priceRange = dpPrice.SelectedItem.ToString();
                string[] prices = priceRange.Split('-');

                for (int i = 0; i < prices.Length; i++)
                {
                     initial = prices[0];
                     end = prices[1];
                    txtPrice1.Text = initial;
                    txtPrice2.Text = end;

                }

                string yearstart, yearend;
                string yearrange = dpYear.SelectedItem.ToString();
                string[] years = yearrange.Split('-');
                for (int i = 0; i < prices.Length; i++)
                {
                    yearstart = years[0];
                    yearend = years[1];
                    txtYear1.Text = yearstart;
                    txtYear2.Text = yearend;
                  

                }
                //dpMake.Text = "All";
                //dpModel.Text = "All";
                dlShowAll.DataSourceID = "dsFilterPrice";
            }
            else
            {
                if (dpModel.SelectedItem.ToString() != "ALL")
                {
                    if(dpMake.SelectedItem.ToString() != "ALL")
                    {
                        dlShowAll.DataSourceID = "dsMakeModel";
                    }
                }
                else
                {
                    dlShowAll.DataSourceID = "dsAll";
                }
            }
           

            
        }
    }
}