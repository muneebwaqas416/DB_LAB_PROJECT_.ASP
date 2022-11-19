using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace DbProject3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://localhost:44366/WebForm2.aspx");
        }

        protected void Unnamed7_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into dbprojecttable values('" + tb1.Text + "', '" + tb2.Text + "', '" + tb3.Text + "', '" + tb4.Text + "', '" + tb5.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            GridView1.DataBind();
            tb1.Text = "";
            tb2.Text = "";
            tb3.Text = "";
            tb4.Text = "";
            tb5.Text = "";
        }
    }
}