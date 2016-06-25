using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// required for Identity and OWIN
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace COMP2007_S2016_Lesson6B
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // store session info
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

            // Sign out 
            authenticationManager.SignOut();

            //Redirect to Default page
            Response.Redirect("~/Default.aspx");
        }
    }
}