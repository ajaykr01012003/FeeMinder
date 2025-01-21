using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeeMinder
{

    public partial class StudentsFeeDetails : System.Web.UI.Page
    {
        Connection objcon = new Connection();
        string sql = "";
        int nor = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                objcon.bindgridview("select * from StudentsFeeDetailsFeeMinder", GridView1);
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            objcon.bindgridview("select * from StudentsFeeDetailsFeeMinder", GridView1);
        }

        protected void insertFeeDetailsBtn_Click(object sender, EventArgs e)
        {
            sql = "insert into StudentsFeeDetailsFeeMinder(studentrollno,studentname,tutionfee,hostelfee,busfee) values ('" + rollnoTextBox.Text + "','" + nameTextBox.Text + "','" + tutionFeeTextBox.Text + "','" + hostelFeeTextBox.Text + "','" + busFeeTextBox.Text + "')";
            nor = objcon.Insert_update_delete(sql);
            if (nor == 1) 
            {
                Response.Write("Data Inserted");
                rollnoTextBox.Text = "";
                nameTextBox.Text = "";
                tutionFeeTextBox.Text = "";
                hostelFeeTextBox.Text = "";
                busFeeTextBox.Text = "";
                objcon.bindgridview("select * from StudentsFeeDetailsFeeMinder", GridView1);
            }
        }
    }
}