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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void loginuser(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            con.Open();

            using (SqlCommand StrQuer = new SqlCommand("SELECT * FROM [Table] WHERE username=@userid AND password=@password", con))
            {
                StrQuer.Parameters.AddWithValue("@userid", username.Text.ToString().TrimEnd());
                StrQuer.Parameters.AddWithValue("@password", password.Text.ToString().TrimEnd());
                SqlDataReader dr = StrQuer.ExecuteReader();
                if (dr.HasRows)
                {
                    Session["userid"] = username.Text.ToString().TrimEnd();
                    Response.Redirect("index.aspx");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('Login Failed');</script>");
                }
            }

        }
    }
}
