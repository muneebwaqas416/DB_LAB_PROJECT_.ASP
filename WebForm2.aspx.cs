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
    public partial class WebForm2 : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string cs = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(cs);
            string query = "select [User Name], Password from dbprojecttable where [User Name] = @user and Password = @pass";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@user", txt_Username.Text);
            cmd.Parameters.AddWithValue("@pass", txt_password.Text);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();

            if(dr.HasRows)
            {
                Session["user"] = txt_Username.Text;

                //ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", "script", true);
                //Console.Write("hi");
                MsgBox("Successful Login", this.Page, this);
                Label1.Text = "Successful Login";
                System.Diagnostics.Debug.WriteLine("success");
                Page.ClientScript.RegisterStartupScript(GetType(), "Scripts", "<script>alert('login successful')</script");
            }
            else
            {
                MsgBox("Unsuccessful Login", this.Page, this);
                Label1.Text = "Unsuccessful Login";
                System.Diagnostics.Debug.WriteLine("failure");
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('login failed')</script");
            }
            con.Close();
        }

        public void MsgBox(String ex, Page pg, Object obj)
        {
            string s = "<SCRIPT language='javascript'>alert('" + ex.Replace("\r\n", "\\n").Replace("'", "") + "'); </SCRIPT>";
            Type cstype = obj.GetType();
            ClientScriptManager cs = pg.ClientScript;
            cs.RegisterClientScriptBlock(cstype, s, s.ToString());
        }
    }
}