using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Drawing2D;


namespace NewTest
{
    public partial class studentRegistration : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            bindState();
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Insert_StudentRegistartion", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("Student_Name", fullnameTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Registration_type", addressTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Address", addressTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Mobile_no", phonenumberTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Email", emailTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("DOB", dobTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Batch", BatchTextBox.Text.Trim());
                cmd.Parameters.AddWithValue("Gender",genderDropDownList .Text.Trim());
                cmd.Parameters.AddWithValue("Qulification", QulificatioTextBox.Text);
                cmd.Parameters.AddWithValue("Profession", ProfessionTextBox.Text);
                cmd.Parameters.AddWithValue("state", stateTextBox.Text);
                cmd.Parameters.AddWithValue("District", DistrictTextBox.Text);
                cmd.Parameters.AddWithValue("City", CityTextBox.Text);
                cmd.Parameters.AddWithValue("pincode", pincodeTextBox.Text);
                cmd.Parameters.AddWithValue("Blood_group", BloodgroupTextBox.Text);
                cmd.Parameters.AddWithValue("Login_id", UsernameTextBox.Text);
                cmd.Parameters.AddWithValue("register_no", SchoolRegisternoTextBox.Text);
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


        }
        private void bindState()
        {
            string command = "SELECT S_id,State_name FROM State";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();

            adpt.Fill(dt);
            stateTextBox.DataSource = dt;

            stateTextBox.DataTextField = "State_name";
            stateTextBox.DataValueField = "S_id";
            stateTextBox.DataBind();
        }
        private void bindDistrict()
        {
            string command = "select D_id,District_name from District where S_id='" + stateTextBox.SelectedValue.ToString() + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            DistrictTextBox.DataSource = dt;
            DistrictTextBox.DataTextField = "District_name";
            DistrictTextBox.DataValueField = "D_id";
            DistrictTextBox.DataBind();
        }

        private void bindCity()
        {
            string command = " select C_id,City_name from City  where D_id='" + DistrictTextBox.SelectedValue.ToString() + "' ";
            SqlDataAdapter adpt = new SqlDataAdapter(command, conn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);

            CityTextBox.DataSource = dt;
            CityTextBox.DataTextField = "City_name";
            CityTextBox.DataValueField = "C_id";
            CityTextBox.DataBind();
        }


        protected void state_SelectedIndexChanged(object sender, EventArgs e)
        {
            DistrictTextBox.Focus();
            bindDistrict();
        }

        protected void district_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindCity();
        }

    }
}