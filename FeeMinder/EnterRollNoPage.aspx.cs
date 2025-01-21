using Microsoft.AspNet.FriendlyUrls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeeMinder
{
    public partial class EnterRollNoPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            string rollno = rollNumberTextBox.Text.Trim();

            Session["RollNumber"]=rollno;

            Response.Redirect("Dashboard.aspx");
        }
    }
}