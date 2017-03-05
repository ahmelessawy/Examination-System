﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CPanel_anonymous : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string[] section = {
            "ASP.cpanel_index_aspx",
            "ASP.cpanel_profile_aspx",
            "ASP.cpanel_permission_aspx"
        };
        if (!section.Contains(BindingContainer.ToString()))
            Response.Redirect("/CPanel/permission.aspx");
    }
}