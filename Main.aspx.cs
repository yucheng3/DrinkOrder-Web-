using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        Label1.Text = btn.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        if (!string.IsNullOrEmpty(Label1.Text)&&!string.IsNullOrEmpty(TextBox1.Text))
        {

            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = @"Data Source=CR4-07\MSSQLSERVER2013;Initial Catalog=Orders;Integrated Security=True";
            sds.SelectCommand = "select * from tProduct where fName = '" + Label1.Text + "' ";
            DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;

            List<CShoppingCartItem> list = Session["CART"] as List<CShoppingCartItem>;
            if (list == null)
            {
                list = new List<CShoppingCartItem>();
                Session["CART"] = list;
            }
            if (dv.Table.Rows.Count > 0)
            {
                CShoppingCartItem item = new CShoppingCartItem();

                item.price = Convert.ToDouble(dv.Table.Rows[0]["fPrice"].ToString());
                item.product = dv.Table.Rows[0]["fName"].ToString();
                item.count = Convert.ToInt32(TextBox1.Text);
                list.Add(item);

            }
            Label2.Text = "資料送出完成!";
            Label2.Visible = true;
        }
        else
        {
            Label2.Text = "請點選你要的飲料與數量";
            Label2.Visible = true;
        }
    }
}