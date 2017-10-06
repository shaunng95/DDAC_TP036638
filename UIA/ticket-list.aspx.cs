using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class ticket_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["userid"] == null)
            {
                Label1.Text = "";

            }
            else
            {
                Label1.Text = Session["userid"].ToString().TrimEnd();
                int amount = Convert.ToInt32(Session["price"].ToString());
                int amount_deal = amount + 250;
                int amount_deal2 = amount - 100;
                price_1.Text = amount.ToString();
                price_2.Text = amount_deal.ToString();
                price_3.Text = amount_deal2.ToString();
            }

        }

        protected void selectflight(object sender, EventArgs e)
        {
            Response.Write("<script language=javascript>alert('An e-mail has been sent to you in order to proceed with confirmation of selected flight. Thank you!');</script>");
        }
    }
}