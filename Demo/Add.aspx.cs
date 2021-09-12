using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;


public partial class Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Disp_Click(object sender, EventArgs e)
    {
        OleDbConnection my_con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\lenovo\Documents\Database1.accdb");
        my_con.Open();
        OleDbCommand o_cmd = new OleDbCommand("select * from Table1", my_con);
        OleDbDataAdapter da = new OleDbDataAdapter(o_cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection my_con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\lenovo\Documents\Database1.accdb");
        my_con.Open();
        OleDbCommand o_cmd = new OleDbCommand("insert into Table1 values(@a,@b,@c,@d,@e,@f,@g,@h)", my_con);
        o_cmd.Parameters.AddWithValue("a", txtNumber.Text);
        o_cmd.Parameters.AddWithValue("b", txtFname.Text);
        o_cmd.Parameters.AddWithValue("c", txtEmail.Text);
        o_cmd.Parameters.AddWithValue("d", txtNumber.Text);
        o_cmd.Parameters.AddWithValue("e", txtGender.Text);
        o_cmd.Parameters.AddWithValue("f", txtAddress.Text);
        o_cmd.Parameters.AddWithValue("g", txtFees.Text);
        o_cmd.Parameters.AddWithValue("h", txtPref_time.Text);
        int i = o_cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write(" <script>alert('Data Inserted !!')</script> ");
        }
        my_con.Close();
  

   
    }
}