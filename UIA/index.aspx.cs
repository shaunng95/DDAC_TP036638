using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
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
            }
        }

        protected void search(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            con.Open();

            using (SqlCommand StrQuer = new SqlCommand("SELECT * FROM [Table2] WHERE flight_from=@from AND flight_to=@to AND flight_date1=@departdate AND flight_date2=@returndate AND flight_class=@class", con))
            {
                StrQuer.Parameters.AddWithValue("@from", Request.Form["country_from"]);
                StrQuer.Parameters.AddWithValue("@to", Request.Form["country_to"]);
                StrQuer.Parameters.AddWithValue("@departdate", datedepart.Text.ToString().TrimEnd());
                StrQuer.Parameters.AddWithValue("@returndate", datereturn.Text.ToString().TrimEnd());
                StrQuer.Parameters.AddWithValue("@class", Request.Form["cabinclass"]);
                SqlDataReader dr = StrQuer.ExecuteReader();
                if (dr.Read())
                {
                    Session["from"] = Request.Form["country_from"];
                    Session["to"] = Request.Form["country_to"];
                    Session["departdate"] = datedepart.Text.ToString().TrimEnd();
                    Session["returndate"] = datereturn.Text.ToString().TrimEnd();
                    Session["class"] = Request.Form["cabinclass"];
                    Session["price"] = dr[6].ToString().TrimEnd();
                    Response.Redirect("ticket-list.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Please try search again');</script>");
                }
            }
        }
    }
}