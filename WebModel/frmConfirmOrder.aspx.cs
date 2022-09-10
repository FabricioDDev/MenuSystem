using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainModel;

namespace WebModel
{
    public partial class frmConfirmOrder : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            List<Order> OrderList = new List<Order>();
            Order newOrder = new Order();
            newOrder.Table = int.Parse(TxtTable.Text);
            newOrder.TotalPay = decimal.Parse(Session["Total"].ToString()) ;
            newOrder.FoodList = (List<Food>)Session["Order"];

            if (Session["OrderList"] == null)
            {
                OrderList.Add(newOrder);
                Session.Add("OrderList", OrderList);
            }
            else
            {
                OrderList = (List<Order>)Session["OrderList"];
                OrderList.Add(newOrder);
                Session["OrderList"] = OrderList;
            }

                Response.Redirect("frmFinish.aspx");
        }
    }
}