﻿using System;
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

        //public object ClientScript { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            bindState();
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

            


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Dashboard.aspx");
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


        protected void state_SelectedIndexChanged(object sender, EventArgs e)
        {
            district.Focus();
            bindDistrict();
        }

        protected void district_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindCity();
        }

        
    }

}
    
