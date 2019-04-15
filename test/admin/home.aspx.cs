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
    public partial class home : System.Web.UI.Page
    {
        // making a new connection //
        SqlConnection con = new SqlConnection(@"Data Source = (LocalDB)\MSSQLLocalDB; AttachDbFilename=C:\Users\jubaer\source\repos\test\test\App_Data\admin_main.mdf;Integrated Security = True");
        protected void Page_Load(object sender, EventArgs e)
        {   
            
        }
     
        public DataTable display_records()
        {
            // sqlDataAdapter in action //
            SqlDataAdapter adp = new SqlDataAdapter("select * from admin_info", con);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            grid1.DataSource = dt;
            grid1.DataBind();

            return dt;

        }

        protected void btn_Click(object sender, EventArgs e)
        {

            insert_data(username.Text, name.Text);
            display_records();
        }

        protected void insert_data(string username, string name)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into admin_info values ('" + username+ "', '" + name + "')";
            cmd.ExecuteNonQuery();
        }
    }
}