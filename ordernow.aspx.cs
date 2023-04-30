using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restrarent_project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_ddlCountry();
                GetData();
              
            }


        }

       
        public void Bind_ddlCountry()
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\project1\\restrarent_project\\App_Data\\Database1.mdf;Integrated Security=false");
            conn.Open();
            SqlCommand cmd = new SqlCommand("select menuitem,menuid from menu", conn);
            SqlDataReader dr1 = cmd.ExecuteReader();
            ddlcountry.DataSource = dr1;
            ddlcountry.DataTextField = "menuitem";
            ddlcountry.DataValueField = "menuid";
            ddlcountry.DataBind();
            conn.Close();
        }
        public void Bind_ddlState()
        {
            SqlConnection conn2 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=F:\\project1\\restrarent_project\\App_Data\\Database1.mdf;Integrated Security=false");
            conn2.Open();

            SqlCommand cmd2 = new SqlCommand("select * from item where menuid='" + ddlcountry.SelectedValue + "'", conn2);

            SqlDataReader dr2 = cmd2.ExecuteReader();
            ddlstate.DataSource = dr2;
            ddlstate.DataTextField = "item";
            ddlstate.DataValueField = "itemid";
            ddlstate.DataBind();
            conn2.Close();
        }
        public void GetData()
        {
            string connectionString1 = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\project1\restrarent_project\App_Data\Database1.mdf;Integrated Security=True");
            SqlConnection con4 = new SqlConnection(connectionString1);
            SqlCommand cmd4 = new SqlCommand("sp_select", con4);
            cmd4.CommandType = CommandType.StoredProcedure;
            con4.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd4);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con4.Close();
        }

        protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlState();
         
        }
        protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_ddlCountry();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            string connectionString = (@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=F:\project1\restrarent_project\App_Data\Database1.mdf;Integrated Security=True");
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand("sp_insert", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("Id", TextBox11.Text);
            cmd.Parameters.AddWithValue("fullname", TextBox1.Text);
            cmd.Parameters.AddWithValue("gender", radio1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("address", TextArea1.InnerText);
            cmd.Parameters.AddWithValue("menu", ddlcountry.SelectedItem.Text);
            cmd.Parameters.AddWithValue("item", ddlstate.SelectedItem.Text);
            cmd.Parameters.AddWithValue("zip", TextBox6.Text);
            cmd.Parameters.AddWithValue("phone", TextBox7.Text);
            con.Open();
            int k = cmd.ExecuteNonQuery();
            if (k != 0)
            {
                Label12.Text = "Record Inserted Succesfully into the Database";
                Label12.ForeColor = System.Drawing.Color.CornflowerBlue;
            }
            GetData();
            con.Close();

        }

       
    }
}