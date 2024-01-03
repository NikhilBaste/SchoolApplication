using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewTest
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void newRegistration_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/studentRegistration.aspx");
        }
    }
}