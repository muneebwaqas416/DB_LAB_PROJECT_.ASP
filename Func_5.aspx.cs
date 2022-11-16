using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DB_Lab_Project_1
{
    public partial class Func_5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack) 
            {
                BindBrandRptr();
            }
            //if (!Page.IsPostBack) 
            //{
            //    string con = ConfigurationManager.ConnectionStrings["myconnect"].ConnectionString;
            //    SqlConnection sql_con = new SqlConnection(con);
            //    String query = "select * from maedical_Record";
            //    SqlCommand cmd = new SqlCommand(query, sql_con);
            //    sql_con.Open();
            //    SqlDataAdapter adp = new SqlDataAdapter(cmd);
            //}
        }

        private void BindBrandRptr()
        {
            string con = ConfigurationManager.ConnectionStrings["myconnect"].ConnectionString;
            using (SqlConnection sql_con = new SqlConnection(con)) 
            {
                String query = "select * from maedical_Record";
                using (SqlCommand cmd = new SqlCommand(query, sql_con))
                {
                    //sql_con.Open();
                    using (SqlDataAdapter adp = new SqlDataAdapter(cmd)) 
                    {
                        DataTable dt = new DataTable();
                        adp.Fill(dt);
                        SQL_Repeater.DataSource = dt;
                        SQL_Repeater.DataBind();
                    }
                }
            }
        }
    }
}