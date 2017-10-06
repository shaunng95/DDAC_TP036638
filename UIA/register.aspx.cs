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
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registeruser(object sender, EventArgs e)
        {
            Guid newguid = Guid.NewGuid();
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
                con.Open();
                string insertR = "INSERT into [Table] (userID,username,password,email,dateofbirth,country) values (@userID, @username, @password, @email, @dateofbirth, @country)";
                SqlCommand com = new SqlCommand(insertR, con);
                com.Parameters.AddWithValue("@userID", newguid);
                com.Parameters.AddWithValue("@username", username.Text.TrimEnd());
                com.Parameters.AddWithValue("@password", password.Text.TrimEnd());
                com.Parameters.AddWithValue("@email", email.Text.TrimEnd());
                com.Parameters.AddWithValue("@dateofbirth", dateofbirth.Text.TrimEnd());
                com.Parameters.AddWithValue("@country", country.Text.TrimEnd());

                com.ExecuteNonQuery();
                Session["New"] = username.Text;
                Response.Redirect("index.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }

        }
    }
}