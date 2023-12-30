using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewTest
{
    public partial class StateMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void New_Click(object sender, EventArgs e)
        {
           
            ModalHeader.Text = "New State";
            btnSave.Text = "Save";
            btnSave.CssClass = "btn btn-success";
            txtStateID.Enabled = true;
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowStateModel();", true);
        }

        protected void Edit_Click(object sender, EventArgs e)
        {
            ModalHeader.Text = "Edit State";
            btnSave.Text = "Update";
            btnSave.CssClass = "btn btn-success";
            txtStateID.Enabled = false;
            ClientScript.RegisterStartupScript(this.GetType(), "Popup", "ShowStateModel();", true);
        }
        protected void Delete_Click(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {

        }



    }
    }