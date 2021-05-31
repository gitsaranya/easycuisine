
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



public partial class profile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)

    {

        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
        }

        String Name = Convert.ToString(Session["id"]);

        if (!this.IsPostBack)

        {

            this.SearchCustomers();

        }

    }

    private void SearchCustomers()

    {



        using (SqlConnection con = new SqlConnection(constr))

        {

            using (SqlCommand cmd = new SqlCommand())

            {

                string sql = "SELECT * FROM SignUp";

                if (!string.IsNullOrEmpty(searchfield.Text.Trim()))

                {
                    sql += " WHERE User_Name LIKE @Name + '%'";

                    cmd.Parameters.AddWithValue("@Name", searchfield.Text.Trim());
                }

                cmd.CommandText = sql;

                cmd.Connection = con;

                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))

                {

                    DataTable dt = new DataTable();

                    sda.Fill(dt);

                }

            }

        }

    }

    protected void Search(object sender, EventArgs e)

    {

        this.SearchCustomers();

    }

    protected void OnPaging(object sender, GridViewPageEventArgs e)

    {

        GridView1.PageIndex = e.NewPageIndex;

        this.SearchCustomers();

    }

    protected void Button1_Click(object sender, EventArgs e)

    {

        if (Sname.Text == null || Sname.Text == "")

        {

            valid.Visible = true;

        }

        else

        {

            valid.Visible = false;

            SqlConnection con = new SqlConnection(constr);

            SqlCommand cmd1 = new SqlCommand("select * from SignUp where User_Name=@NAME", con);

            cmd1.Parameters.AddWithValue("@NAME", Sname.Text);

            SqlDataAdapter da = new SqlDataAdapter(cmd1);

            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)

            {

                con.Open();

        
                Uid.Visible = true;
                
                name.Visible = true;

                number.Visible = true;

                email.Visible = true;

                Button2.Visible = true;

                Button3.Visible = true;

                string sql = "select * from SignUp where User_Name='" + Sname.Text + "'";

                SqlCommand cmd = new SqlCommand(sql, con);

                SqlDataReader rdr = cmd.ExecuteReader(System.Data.CommandBehavior.CloseConnection);

                rdr.Read();

                Uid.Text = rdr[0].ToString();

                name.Text = rdr[1].ToString();

                number.Text = rdr[2].ToString();

                email.Text = rdr[3].ToString();

                rdr.Close();

                con.Close();

            }

            else

            {

                ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('The Name is not Present or u have entered Incomplete name')</script>");

            }

        }

    }

    protected void Button2_Click(object sender, EventArgs e)

    {

        int id = Convert.ToInt32(Uid.Text);

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        string sql1 = "Update SignUp set User_Name='" + name.Text.TrimEnd() + "',User_Num='" + number.Text.TrimEnd() + "',User_Email='" + email.Text.TrimEnd() + "' where User_Name='" + Sname.Text + "'";

        SqlCommand cmd = new SqlCommand(sql1, con);

        cmd.ExecuteNonQuery();

        con.Close();

        name.Text = null;

        number.Text = null;

        email.Text = null;

        Uid.Text = null; this.SearchCustomers();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('User updated successfully')</script>");


    }
    protected void Button3_Click(object sender, EventArgs e)

    {

        int id = Convert.ToInt32(Uid.Text);

        SqlConnection con = new SqlConnection(constr);

        con.Open();

        string sql1 = "Delete From SignUp Where User_Name='" + Sname.Text + "'";

        SqlCommand cmd = new SqlCommand(sql1, con);

        cmd.ExecuteNonQuery();

        con.Close();

        this.SearchCustomers();

        ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('User Deleted successfully')</script>");


    }
}