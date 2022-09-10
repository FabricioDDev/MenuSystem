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
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataCategory dataCategory = new DataCategory();
            if (!IsPostBack)
            {
                RtrCategory.DataSource = dataCategory.Listing();
                RtrCategory.DataBind();
            } 
        }
    }
}