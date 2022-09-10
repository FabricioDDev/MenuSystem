using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainModel;
using DataModel;

namespace WebModel
{
    public partial class Top : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    DataFood DFood = new DataFood();
                    rtrCard.DataSource = DFood.Listing();
                    rtrCard.DataBind();
                }
            }
            catch(Exception)
            {
                Response.Redirect("ErrorPage.html", false);
            }

            if (Session["Count"] != null)
                LblOrder.Text = Session["Count"].ToString();
            else
                LblOrder.Text = "0";
        }

        protected void BtnAdd_Click(object sender, EventArgs e)
        {
            DataFood DFood = new DataFood();
            try
            {
                int Id = int.Parse(((Button)sender).CommandArgument);
                Food Selected = DFood.Listing().Find(x => x.Id == Id);
                AddToCart(Selected);
            }
            catch (Exception)
            {
                Response.Redirect("ErrorPage.html", false);
            }
        }
        private void AddToCart(Food New)
        {
            int Count;
            List<Food> Order = new List<Food>();
            try
            {
                if (Session["Order"] == null)
                {
                    Order.Add(New);
                    Count = Order.Count();
                    LblOrder.Text = Count.ToString();
                    Session["Count"] = Count;
                    Session["Order"] = Order;
                    return;
                }
                Order = (List<Food>)Session["Order"];
                Order.Add(New);
                Count = Order.Count();
                Session["Count"] = Count;
                LblOrder.Text = Count.ToString();
                Session["Order"] = Order;
            }
            catch (Exception)
            {
                Response.Redirect("ErrorPage.html", false);
            }
        }
    }
}