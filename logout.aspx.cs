﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Add("Username", null);
        Session.Add("Password", null);
        Response.Cookies["UserInfo"].Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("/index.aspx");
    }
}