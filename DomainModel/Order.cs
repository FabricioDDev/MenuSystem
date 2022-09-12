using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DomainModel
{
    public class Order
    {
        public int Table { get; set; }
        public decimal TotalPay { get; set; }
        public string FoodList { get; set; }
        public bool active { get; set; }
    }
}
