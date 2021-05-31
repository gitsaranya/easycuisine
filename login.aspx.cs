using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)

    {

        Session["id"] = null;

    }


    protected void submit_Click(object sender, EventArgs e)

    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        con.Open();

        SqlCommand cmd = new SqlCommand("select * from logintable where email =@username and password=@password", con);

        cmd.Parameters.AddWithValue("@username", email.Text);

        cmd.Parameters.AddWithValue("@password", pass.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count > 0)

        {

            Session["id"] = email.Text;

            Response.Redirect("Home.aspx");

        }

        else

        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Invalid Username and Password')</script>");

        }

    }
}