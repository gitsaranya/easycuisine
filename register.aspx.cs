using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void LogIn_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);



    protected void reg_Click1(object sender, EventArgs e)

    {

        string abc = "0";

        con.Open();

        SqlCommand cmd = new SqlCommand("insert into SignUp(User_Name,User_Num,User_Email,User_Pass) values ('" + name.Text + "','" + number.Text + "','" + email.Text + "','" + pass.Text + "')", con);

        SqlCommand cmd1 = new SqlCommand("insert into logintable(email,password,password_change_status) values('" + email.Text + "','" + pass.Text + "','" + abc + "')", con);

        cmd.ExecuteNonQuery();

        cmd1.ExecuteNonQuery();

        con.Close();

        Response.Redirect("login.aspx");



    }
}