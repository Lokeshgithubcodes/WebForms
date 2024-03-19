using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Demo1WebForms
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProductList();
            }

        }
                                              
        SqlConnection conn = new SqlConnection(@"Data Source=LOKESH\SQLEXPRESS;Initial Catalog=WebFormsDB;Integrated Security=True;Encrypt=True;TrustServerCertificate=True");
        protected void Button1_Click(object sender, EventArgs e)
        {
           int productid=int.Parse(TextBox1.Text);
            string iname = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cdate=DateTime.Parse(TextBox6.Text);
            conn.Open();
            SqlCommand co = new SqlCommand("execute productsetup_sp '" + productid + "', '"+iname +"', '"+specification+"', '"+unit+"', '"+status+"', '" + cdate+"'", conn);
            co.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(), "script", "alert('Successfully inserted.'); ", true);
            GetProductList();
        }

        void GetProductList()
        {
            SqlCommand co = new SqlCommand("exec productlist_sp", conn);
            SqlDataAdapter sd=new SqlDataAdapter(co);
            DataTable dt=new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
            string iname = TextBox2.Text, specification = TextBox3.Text, unit = DropDownList1.SelectedValue, status = RadioButtonList1.SelectedValue;
            DateTime cdate = DateTime.Parse(TextBox6.Text);
            conn.Open();
            SqlCommand co = new SqlCommand("execute productUpdate_sp '" + productid + "', '" + iname + "', '" + specification + "', '" + unit + "', '" + status + "', '" + cdate + "'", conn);
            co.ExecuteNonQuery() ;
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated.'); ", true);
            GetProductList();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);
           
            conn.Open();
            SqlCommand co = new SqlCommand("execute productDelete_sp '" + productid + "' ", conn);
            co.ExecuteNonQuery();
            conn.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Deleted.'); ", true);
            GetProductList();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int productid = int.Parse(TextBox1.Text);

            conn.Open();
            SqlCommand co = new SqlCommand("execute productSearch_sp '" + productid + "' ", conn);
            SqlDataAdapter sd=new SqlDataAdapter(co);
            DataTable dt= new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetProductList();

        }
    }
}