using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DomainModel;

namespace WebModel
{
    public partial class frmCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            charge();
        }
        private void charge()
        {
            try
            {
                GvCart.DataSource = Session["Order"];
                GvCart.DataBind();
                LblTotal.Text = Total().ToString();
            }
            catch (Exception)
            {
                LblClean.Text = "Aun no has Agregado nada a tu pedido!";
            }
        }
        private decimal Total()
        {
            decimal Total = 0;
            try
            {
                List<Food> Aux = (List<Food>)Session["Order"];
                foreach (DomainModel.Food food in Aux)
                {
                    Total = food.Price + Total;
                }
                return Total;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            
        }

        protected void GvCart_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int Id = (int)GvCart.SelectedDataKey.Value;
                List<Food> aux = (List<Food>)Session["Order"];
                Food toRemove = aux.Find(x => x.Id == Id);
                aux.Remove(toRemove);
                Session.Add("Order", aux);
                int count = aux.Count();
                Session.Add("Count", count);
                charge();
            }
            catch(Exception)
            {
                LblClean.Text = "Error al Eliminar";
            }
        }

        protected void BtnFinish_Click(object sender, EventArgs e)
        {
            if (Session["Order"] != null)
            {
                Session["Total"] = LblTotal.Text;
                Response.Redirect("frmConfirmOrder.aspx");
            }
            else
                BtnFinish.Enabled = false;
        }
    }
}