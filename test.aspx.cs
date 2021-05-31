using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class test : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        // if (Session["id"] == null)
        //  {
        //      Response.Redirect("login.aspx");
        //  }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void Button_Click(object sender, EventArgs e)
    {
        if (G102.Checked && L103.Checked && L104.Checked && M104.Checked)
        {
            Panel1.Visible = true;
            // ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('CheckBox checked.');", true);
        }
        else if (G102.Checked && L103.Checked && L104.Checked && M104.Checked)
        {
            Panel2.Visible = true;
        }
        else if (G105.Checked && M103.Checked && M106.Checked && D103.Checked && M105.Checked && M104.Checked)
        {
            Panel3.Visible = true;
        }
        else if (G103.Checked && V102.Checked && V104.Checked && V111.Checked && M103.Checked && M104.Checked && V110.Checked && M105.Checked && G104.Checked && L103.Checked)
        {
            Panel4.Visible = true;
        }
        else if (S111.Checked && V102.Checked && S107.Checked && S108.Checked && V111.Checked && S110.Checked && S109.Checked && S101.Checked && M107.Checked && S103.Checked && M104.Checked && G102.Checked && M105.Checked && V107.Checked)
        {
            Panel5.Visible = true;
        }
        else if (L102.Checked && G102.Checked && V104.Checked && S107.Checked && S108.Checked && V102.Checked && V103.Checked && S103.Checked && S109.Checked && M107.Checked && M104.Checked)
        {
            Panel6.Visible = true;
        }
        else if (G102.Checked && V111.Checked && S106.Checked && V109.Checked && M105.Checked)
        {
            Panel7.Visible = true;
        }
        else if (G102.Checked && V103.Checked && V102.Checked && S108.Checked && S103.Checked && S109.Checked && V104.Checked && S101.Checked && M104.Checked && V107.Checked && V110.Checked && M105.Checked && L103.Checked && S111.Checked)
        {
            Panel8.Visible = true;
        }
        else if (V101.Checked && V102.Checked && D102.Checked && V103.Checked && V104.Checked && S101.Checked && D101.Checked && M104.Checked && M105.Checked)
        {
            Panel9.Visible = true;
        }
        else if (V105.Checked && V106.Checked && V102.Checked && V103.Checked && S102.Checked && S101.Checked && V107.Checked && M104.Checked && M105.Checked)
        {
            Panel10.Visible = true;
        }
        else if (L101.Checked && G101.Checked && V108.Checked && V102.Checked && V109.Checked && S107.Checked && S108.Checked && S104.Checked && S105.Checked && S103.Checked && S106.Checked && M107.Checked && M105.Checked)
        {
            Panel11.Visible = true;
        }
        else if (D102.Checked && V102.Checked && V108.Checked && S103.Checked && S106.Checked && S109.Checked && S110.Checked && M107.Checked && D101.Checked && S107.Checked && V104.Checked && V107.Checked && M105.Checked)
        {
            Panel12.Visible = true;
        }
        else if (D101.Checked && M101.Checked && M103.Checked && M106.Checked)
        {
            Panel13.Visible = true;
        }
        else if (D101.Checked && M102.Checked && M103.Checked && M106.Checked)
        {
            Panel14.Visible = true;
        }
        else if (F101.Checked && M106.Checked && M104.Checked && M103.Checked)
        {
            Panel15.Visible = true;
        }
        else if (F102.Checked && F103.Checked && D101.Checked && M108.Checked)
        {
            Panel16.Visible = true;
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Select atleast one checkbox.');", true);
        }
    }

    protected void profile_Click(object sender, EventArgs e)
    {
        Response.Redirect("upd.aspx");
    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session["id"] = null;
        Response.Redirect("login.aspx");
    }
    protected void LinkButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("updatePass.aspx");
    }

}