using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace FeeMinder
{
    public class Connection
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LKF5IC5\SQLEXPRESS01;Initial Catalog=feeminder;Integrated Security=True;Encrypt=False");
        SqlCommand cmd;
        SqlDataAdapter ada;
        DataSet ds;
        int row;
        public int Insert_update_delete(string sql)
        {
            cmd = new SqlCommand(sql, con);
            try
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                }
                con.Open();
                row = cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();

            }
            return row;

        }

        public void bindgridview(string query, GridView gv)
        {
            cmd = new SqlCommand(query, con);
            ada = new SqlDataAdapter(cmd);
            ds = new DataSet();
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            ada.Fill(ds);
            gv.DataSource = ds.Tables[0];
            gv.DataBind();
            con.Close();
        }

        public DataSet authenticatelogin(string sql)
        {
            cmd = new SqlCommand();
            DataSet ds = new DataSet();
            try
            {

                con.Open();

                // Set up the command with the provided SQL query
                cmd.CommandText = sql;
                cmd.Connection = con;

                // Create a data adapter and fill the DataSet with the results of the query
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(ds);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }
            finally
            {
                con.Close();
            }
            return ds;
        }

        public void binddropdwlist(string sql, string textField, string valueField, DropDownList dropDownList)
        {
            cmd = new SqlCommand(sql, con);
            ada = new SqlDataAdapter(cmd);
            ds = new DataSet();
            con.Open();
            ada.Fill(ds);
            con.Close();

            dropDownList.DataSource = ds.Tables[0];
            dropDownList.DataTextField = textField;
            dropDownList.DataValueField = valueField;
            dropDownList.DataBind();
        }
        public void insertDeleteUpdateSelect(int sno, string name, int age, int operation)
        {
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_insert_update_delete";
            cmd.Parameters.AddWithValue("@sno", sno);
            cmd.Parameters.AddWithValue("@sname", name);
            cmd.Parameters.AddWithValue("@age", age);
            cmd.Parameters.AddWithValue("@op", operation);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();
        }

        public void registerUsingStoredProcedure(string username, string firstname, string lastname, int mobile, string email, string gender, string password)
        {
            cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_registration_form";
            cmd.Parameters.AddWithValue("@username", username);
            cmd.Parameters.AddWithValue("@firstname", firstname);
            cmd.Parameters.AddWithValue("@lastname", lastname);
            cmd.Parameters.AddWithValue("@mobile", mobile);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@password", password);
            con.Open();
            int row = cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}