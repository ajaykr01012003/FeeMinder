using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeeMinder
{
    public partial class LoginPage : System.Web.UI.Page
    {
        DataSet ds;
        Connection objcon = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {

            string sql = "select * from LoginFeeMinder where username='" + usernameTextBox.Text + "' and password='" + passwordTextBox.Text + "'";
            ds = objcon.authenticatelogin(sql);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                usernameTextBox.Text = "";
                passwordTextBox.Text = "";
                usernameTextBox.Focus();
                ScriptManager.RegisterStartupScript(this, GetType(), "showErrorDialog", "alert('Invalid username or password.');", true);

            }
        }
    }
}