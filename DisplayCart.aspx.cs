using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        double COUNT = 0;
        if (Session["CART"] == null)
            Response.Redirect("Main.aspx");

        GridView1.DataSource = Session["CART"];
        GridView1.DataBind();


        List<CShoppingCartItem> list = Session["CART"] as List<CShoppingCartItem>;


        double dblPay = 0;
        foreach (CShoppingCartItem t in list)
            dblPay += t.count * t.price;
        Label1.Text = "" + dblPay.ToString("###,###,##0");
    }
}