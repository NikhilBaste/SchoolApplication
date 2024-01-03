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
using System.Web.Configuration;
using System.Drawing.Drawing2D;
using System.IdentityModel.Metadata;
using System.Drawing;

namespace NewTest.COMMON
{
    public partial class Outside : System.Web.UI.MasterPage
    {
        SqlConnection conn = new SqlConnection();

        

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            bindState();

            if (state.SelectedValue != "" && district.SelectedValue == "")
            {

                district.Enabled = false;
                city.Enabled = false;
            }


        }

        protected void regbtn_Click(object sender, EventArgs e)
        {
           

            try
            {
                SqlCommand cmd = new SqlCommand("Insert_SchoolRegistration", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("School_Name", schoolName.Text.Trim());
                cmd.Parameters.AddWithValue("Address", address.Text.Trim());
                cmd.Parameters.AddWithValue("City", city.Text.Trim());
                cmd.Parameters.AddWithValue("District", district.Text.Trim());
                cmd.Parameters.AddWithValue("State", state.Text.Trim());
                cmd.Parameters.AddWithValue("Pincode", pincode.Text);
                cmd.Parameters.AddWithValue("Land_Line", landLine.Text);
                cmd.Parameters.AddWithValue("Mobile_No1", mobileNo1.Text);
                cmd.Parameters.AddWithValue("Mobile_No2", mobileNo2.Text);
                cmd.Parameters.AddWithValue("Email", email.Text);
                cmd.Parameters.AddWithValue("Webaddress", webAddress.Text);
                cmd.Parameters.AddWithValue("Estab_year", estabDate.Text);
                cmd.Parameters.AddWithValue("Undertaken", undertaken.Text);
                cmd.Parameters.AddWithValue("School_PRN", schoolPRN.Text);
                cmd.Parameters.AddWithValue("GST_No", gstNo.Text);
                cmd.Parameters.AddWithValue("School_Register_no", schoolPRN.Text);
                cmd.Parameters.AddWithValue("School_Regdate", school_reg_date.Text);
                cmd.Parameters.AddWithValue("UGC_id", ugcId.Text);
                cmd.Parameters.AddWithValue("Rank", rank.Text);
             
                conn.Open();
                int k = cmd.ExecuteNonQuery();
                if (k == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Something went wrong')", true);
                }
                conn.Close();

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);

            }


            schoolName.Text = string.Empty;
            address.Text = string.Empty;
            pincode.Text = string.Empty;
            landLine.Text = string.Empty;
            mobileNo1.Text = string.Empty;
            mobileNo2.Text = string.Empty;
            email.Text = string.Empty;
            webAddress.Text = string.Empty;
            estabDate.Text = string.Empty;
            undertaken.Text = string.Empty;
            schoolPRN.Text = string.Empty;
            gstNo.Text = string.Empty;
            School_Registration_No.Text = string.Empty;
            school_reg_date.Text = string.Empty;
            ugcId.Text = string.Empty;
            rank.Text = string.Empty;


            state.SelectedIndex = 0;
            district.Items.Clear();
            district.Items.Add(new ListItem("--Select--", ""));
            city.Items.Clear();
            city.Items.Add(new ListItem("--Select--", ""));

            district.Enabled = false;
            city.Enabled = false;


        }


        protected void Button1_Click(object sender, EventArgs e)
        {
           

            string username = txtUsername.Text;
            string password = txtPassword.Text;

            
                using (SqlCommand command = new SqlCommand("School_Login", conn))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Username", username);
                    command.Parameters.AddWithValue("@Password", password);

                    conn.Open();
                    int result = Convert.ToInt32(command.ExecuteScalar());

                    if (result == 1)
                    {
                        // Credentials are valid, redirect to another page
                        Response.Redirect("~/Dashborad.aspx");
                    }
                    else
                    {
                        // Credentials are invalid, show an error message
                        
                        Label1.Text = "Invalid username or password.";
                }
                }
            



        }

        private void bindState()
        {
            string command = "SELECT S_id,State_name FROM State";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();

            adpt.Fill(dt);              
            state.DataSource = dt;
            
            state.DataTextField = "State_name";
            state.DataValueField = "S_id";
            state.DataBind();
        }

        private void bindDistrict()
        {
            string command = "select D_id,District_name from District where S_id='"+state.SelectedValue.ToString()+"' ";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            district.DataSource = dt;
            district.DataTextField = "District_name";
            district.DataValueField = "D_id";
            district.DataBind();
        }

        private void bindCity()
        {
            string command = " select C_id,City_name from City  where D_id='"+district.SelectedValue.ToString()+ "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            city.DataSource = dt;
            city.DataTextField = "City_name";
            city.DataValueField = "C_id";
            city.DataBind();
        }

        private void enableDistrict()
        {
            if (state.SelectedValue == "")
                district.Enabled = false;
            else
                district.Enabled = true;
        }

        private void enableCity()
        {
            if (district.SelectedValue == "")
                city.Enabled = false;
            else
                city.Enabled = true;
        }


        protected void state_SelectedIndexChanged(object sender, EventArgs e)
        {
            district.Focus();
            bindDistrict();
            enableDistrict();
        }

        protected void district_SelectedIndexChanged(object sender, EventArgs e)
        {

            bindCity();
            enableCity();
        }

        
    }

}
    
