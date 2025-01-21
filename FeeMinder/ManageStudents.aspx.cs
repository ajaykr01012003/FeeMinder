using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FeeMinder
{
    public partial class ManageStudents : System.Web.UI.Page
    {

        Connection objcon = new Connection();
        string sql = "";
        int nor = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!Page.IsPostBack)
            {
                objcon.bindgridview("select * from StudentFeeMinder", GridView1);
            }

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

            GridView1.PageIndex = e.NewPageIndex;
            objcon.bindgridview("select * from StudentFeeMinder", GridView1);

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            objcon.bindgridview("select * from StudentFeeMinder", GridView1);

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            Label lblrollno = (Label)GridView1.Rows[e.RowIndex].FindControl("Lblrollno");
            string rollno = lblrollno.Text;
            sql = "delete from StudentFeeMinder where studentrollno='" + rollno+"'";
            nor = objcon.Insert_update_delete(sql);
            if (nor == 1)
            {
                objcon.bindgridview("select * from StudentFeeMinder", GridView1);
                GridView1.EditIndex = -1;

            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            objcon.bindgridview("select * from StudentFeeMinder", GridView1);

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label lblrollno = (Label)GridView1.Rows[e.RowIndex].FindControl("Lblrollno");
            TextBox Txtsname = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsname");
            TextBox Txtclass = (TextBox)GridView1.Rows[e.RowIndex].FindControl("txtclass");
            TextBox Txtsection =(TextBox)GridView1.Rows[e.RowIndex].FindControl("txtsection");

            if (Txtsname == null || Txtclass == null || Txtsection == null || lblrollno == null)
            {
               
                GridView1.EditIndex = -1;
                objcon.bindgridview("select * from StudentFeeMinder", GridView1);
                return;
            }

            sql = "update StudentFeeMinder set studentname = '" + Txtsname.Text + "', studentclass = '" + Txtclass.Text + "', studentsection = '" + Txtsection.Text + "' where studentrollno = '" + lblrollno.Text + "'";

            nor = objcon.Insert_update_delete(sql);

            if (nor == 1)
            {
                GridView1.EditIndex = -1;
                objcon.bindgridview("select * from StudentFeeMinder", GridView1);
            }
        }




        protected void btnInsert_Click(object sender, EventArgs e)
        {
            sql = "insert into StudentFeeMinder values('" + textboxRollno.Text + "','" + textboxstudentname.Text + "','" + textboxclass.Text + "','" + textboxsection.Text + "')";
            nor = objcon.Insert_update_delete(sql);
            if (nor == 1)
            {
                Response.Write("Data Inserted");
                textboxRollno.Text = "";
                textboxstudentname.Text = "";
                textboxclass.Text = "";
                textboxsection.Text = "";
                objcon.bindgridview("select * from StudentFeeMinder", GridView1);
            }
        }
    }
}