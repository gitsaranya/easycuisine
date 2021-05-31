using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class filter : System.Web.UI.Page
{
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("index.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (c1.Visible)
        {
            c1.Visible = false;
        }
        else
        {
            c1.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (c2.Visible)
        {
            c2.Visible = false;
        }
        else
        {
            c2.Visible = true;
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (c3.Visible)
        {
            c3.Visible = false;
        }
        else
        {
            c3.Visible = true;
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        if (c4.Visible)
        {
            c4.Visible = false;
        }
        else
        {
            c4.Visible = true;
        }
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        if (c5.Visible)
        {
            c5.Visible = false;
        }
        else
        {
            c5.Visible = true;
        }
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        if (c6.Visible)
        {
            c6.Visible = false;
        }
        else
        {
            c6.Visible = true;
        }
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        if (c7.Visible)
        {
            c7.Visible = false;
        }
        else
        {
            c7.Visible = true;
        }
    }
    protected void b1_Click(object sender, EventArgs e)
    {
        string i = "";
        for (int j = 0; j < c1.Items.Count; j++)
        {
            if (c1.Items[j].Selected)
            {
                i = i + "" + c1.Items[j].Value;
            }
        }
        for (int j = 0; j < c2.Items.Count; j++)
        {
            if (c2.Items[j].Selected)
            {
                i = i + "" + c2.Items[j].Value;
            }
        }
        for (int j = 0; j < c3.Items.Count; j++)
        {
            if (c3.Items[j].Selected)
            {
                i = i + "" + c3.Items[j].Value;
            }
        }
        for (int j = 0; j < c4.Items.Count; j++)
        {
            if (c4.Items[j].Selected)
            {
                i = i + "" + c4.Items[j].Value;
            }
        }
        for (int j = 0; j < c5.Items.Count; j++)
        {
            if (c5.Items[j].Selected)
            {
                i = i + "" + c5.Items[j].Value;
            }
        }
        for (int j = 0; j < c6.Items.Count; j++)
        {
            if (c6.Items[j].Selected)
            {
                i = i + "" + c6.Items[j].Value;
            }
        }
        for (int j = 0; j < c7.Items.Count; j++)
        {
            if (c7.Items[j].Selected)
            {
                i = i + "" + c7.Items[j].Value;
            }
        }
        l1.Text = i;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login.aspx");
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
}
