using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Text;


public partial class web : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Gen_bill_Click(object sender, EventArgs e)
    {
        OleDbConnection my_con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\lenovo\Documents\Database1.accdb");
        my_con.Open();
        OleDbCommand o_cmd = new OleDbCommand("insert into Cust values(@a,@b,@c,@d,@e)", my_con);
        o_cmd.Parameters.AddWithValue("a", txtMobile_no.Text);
        o_cmd.Parameters.AddWithValue("b", txtName.Text);
        o_cmd.Parameters.AddWithValue("c", txtBatch.Text);
        o_cmd.Parameters.AddWithValue("d", txtAmount.Text);
        o_cmd.Parameters.AddWithValue("e", txtMobile_no.Text);
        int i = o_cmd.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Write(" <script>alert('Data Inserted !!')</script> ");
        }
        my_con.Close();

        //** Code to create pdf file
       // int id = int.Parse((sender as LinkButton).CommandArgument);
        //byte[] bytes;
        string fileName, contentType;
        my_con = new OleDbConnection(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\Users\lenovo\Documents\Database1.accdb");
        my_con.Open();
        o_cmd = new OleDbCommand("select * from Cust where ID=@ID", my_con);
        o_cmd.Parameters.AddWithValue("@ID", txtMobile_no.Text);
        OleDbDataAdapter da = new OleDbDataAdapter(o_cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);

       StringBuilder builder = new StringBuilder();

        foreach (DataRow row in dt.Rows)
        {
            for (int j = 0; j < row.ItemArray.Length; j++)
            {
                string rowText = row.ItemArray[j].ToString();
                if (rowText.Contains(","))
                {
                    rowText = rowText.Replace(",", "/");
                }

                builder.Append(rowText + ",");
            }
            builder.Append(Environment.NewLine);
        }
        //Convert to Byte Array 
        byte[] bytes = Encoding.ASCII.GetBytes(builder.ToString());

        Response.Clear();
        Response.Buffer = true;
        Response.Charset = "";
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.ContentType = "application/pdf";
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + txtMobile_no.Text +".pdf" );
       Response.BinaryWrite(bytes);
        Response.Flush();
        Response.End();




    }
}
