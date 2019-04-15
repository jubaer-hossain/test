using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace test.admin
{
    public partial class dropdownlist : System.Web.UI.Page
    {
        // making a new connection //
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\jubaer\source\repos\test\test\App_Data\admin_main.mdf;Integrated Security = True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(con.State == ConnectionState.Open)
            {
                con.Close();
            }
            
        }

        // ei button e click korle dropdownlist theke data page e show kore. Database er sathe kono connection nai //
        protected void btn1_Click(object sender, EventArgs e)
        {
            if(list1.SelectedValue == "-1")
            {
                Response.Write("Please select an item");
            }
            else
            {
                Response.Write(list1.SelectedItem.Text);
            }
        }

        // ei button ta click korle database theke "username" dropdownlist er text akare and "name" dropdown er value akare ashbe //
        protected void btn2_Click(object sender, EventArgs e) 
        {
            con.Open();
            SqlDataAdapter adp = new SqlDataAdapter("Select username, name from admin_info", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);

            list2.DataSource = dt;
            list2.DataTextField = "username";
            list2.DataValueField = "name";
            list2.DataBind();
            con.Close();
        }

        // dropdown theke database e input kora //

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into admin_info values('" + list1.SelectedItem+ "', '" + list1.SelectedValue + "')";
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btn_radio_Click(object sender, EventArgs e)
        {
            
        }
    }
}