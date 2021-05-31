using System;

using System.Data;

using System.Web.UI.WebControls;

using System.IO;

using System.Collections;

using System.Configuration;

using System.Linq;

using System.Web;

using System.Web.Security;

using System.Web.UI;

using System.Web.UI.HtmlControls;

using System.Web.UI.WebControls.WebParts;

using System.Xml.Linq;

using System.Data.SqlClient;

public partial class updatePass : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void submit1_Click(object sender, EventArgs e)
    {

    }

    protected void cancel1_Click(object sender, EventArgs e)
    {
        Response.Redirect("profile.aspx");
    }

    protected void Button1_Click(object sender, EventArgs e)

    {
        string id = Convert.ToString(Session["id"]);

        Label1.Text = id;

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        SqlCommand cmd = new SqlCommand("select * from logintable where email=@ID and password=@Password", con);

        cmd.Parameters.AddWithValue("@Id", id);

        cmd.Parameters.AddWithValue("@Password", ppass.Text);

        SqlDataAdapter da = new SqlDataAdapter(cmd);

        DataTable dt = new DataTable();

        da.Fill(dt);

        if (dt.Rows.Count > 0)

        {

            string sql1 = "Update logintable set password='" + npass.Text.Trim() + "' where email='" + id + "'";

            SqlCommand cmd1 = new SqlCommand(sql1, con);

            cmd1.ExecuteNonQuery();

            con.Close();

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('password updated')</script>");



        }

        else

        {

            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('old password doesnot match')</script>");



        }

    }
}