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
    public partial class frmOrdersAdm : System.Web.UI.Page
    {
        public frmOrdersAdm()
        {
            OrderList = new List<Order>();
        }
        public List<Order> OrderList { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["OrderList"] != null)
            {
                OrderList = (List<Order>)Session["OrderList"];
                RptCard.DataSource = OrderList;
                RptCard.DataBind();
                
            }
        }
    }
}