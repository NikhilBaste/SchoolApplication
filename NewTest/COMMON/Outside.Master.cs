using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Data;

namespace NewTest.COMMON
{
    public partial class Outside : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        }

        protected void sch_registration_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_insert", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("name", schoolRegId.Text);
            cmd.Parameters.AddWithValue("email", email.Text);
            //cmd.Parameters.AddWithValue("education", TextBox3.Text);
            //cmd.Parameters.AddWithValue("phoneno", TextBox4.Text);
            cmd.Parameters.AddWithValue("city", TextBox5.Text);
            conn.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                //lblmsg.Text = "Record Inserted Succesfully into the Database";
                //lblmsg.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            conn.Close();
        }
    }
    
}