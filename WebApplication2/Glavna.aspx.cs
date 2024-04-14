using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Glavna : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(localdb)\\ProjectModels;Initial Catalog=Igrice;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

            
        }

        void GridViewFill(SqlConnection con)
        {
            string query = "SELECT * FROM Games";

            SqlCommand cmd = new SqlCommand(query, con);

            SqlDataReader reader = cmd.ExecuteReader();

            GridView1.DataSource = reader;

            GridView1.DataBind();

            reader.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "Mihailo" && TextBox2.Text == "Mihailo2005")
            {
                Label4.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                TextBox3.Visible = true;
                DropDownList1.Visible = true;
                Button2.Visible = true;
            }
            try
            {
                using (con)
                {
                    con.Open();

                    GridViewFill(con);
                }
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("Exception Message: " + ex.Message);
                System.Diagnostics.Debug.WriteLine("Stack Trace: " + ex.StackTrace);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(TextBox3.Text);
            int rating = Convert.ToInt32(DropDownList1.Text);
                using (con)
                {
                con.Open();

                SqlParameter p1 = new SqlParameter();
                SqlParameter p2 = new SqlParameter();


                p1.Value = id;
                p2.Value = rating;

                p1.ParameterName = "@id";
                p2.ParameterName = "@rating";

                string query = "UPDATE Games " +
                                " SET Game_score = @rating " +
                                " WHERE GameID = @id";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.ExecuteNonQuery();

                SqlDataReader reader = cmd.ExecuteReader();

                reader.Close();
                string query2 = "SELECT * FROM Games";

                SqlCommand cmd2 = new SqlCommand(query2, con);

                SqlDataReader reader2 = cmd2.ExecuteReader();

                GridView1.DataSource = reader2;

                GridView1.DataBind();

                reader2.Close();


            }
            
        }
    }
}
