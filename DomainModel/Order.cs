using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DomainModel
{
    public class Order
    {
        public Order()
        {
            FoodList = new List<Food>();
        }
        public int Table { get; set; }
        public decimal TotalPay { get; set; }
        public List<Food> FoodList { get; set; }
    }
}
