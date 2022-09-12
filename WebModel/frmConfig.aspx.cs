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
    public partial class frmConfig : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataCategory DCategory = new DataCategory();
            DataFood DFood = new DataFood();
            GvTop.DataSource = DFood.Listing().FindAll(x => x.Top == true);
            GvTop.DataBind();

            GvCategory.DataSource = DCategory.Listing();
            GvCategory.DataBind();

            GvFood.DataSource = DFood.Listing();
            GvFood.DataBind();
        }
    }
}