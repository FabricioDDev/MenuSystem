using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DB;
using DomainModel;

namespace DataModel
{
    public class DataFood
    {
        public DataFood()
        {
            data = new DataAccess();
        }
        private DataAccess data;
        public List<Food> Listing()
        {
            List<Food> list = new List<Food>();
            try
            {
                data.Query("select F.Id as Id, F.Name as Name, F.Description as Description, F.Price as Price, F.Active as Active, F.TopTen as TopTen, C.Description as CDescription, C.Id as CId from Food F, Category C where C.Id = F.IdCategory");
                data.Read();
                while (data.readerProp.Read())
                {
                    Food aux = new Food();
                    aux.Id = (int)data.readerProp["Id"];
                    aux.Category = new Category();
                    aux.Category.Id = (int)data.readerProp["CId"];
                    aux.Category.Description = (string)data.readerProp["CDescription"];
                    aux.Name = (string)data.readerProp["Name"];
                    aux.Description = (string)data.readerProp["Description"];
                    aux.Active = (bool)data.readerProp["Active"];
                    aux.Price = (decimal)data.readerProp["Price"];
                    aux.Top = (bool)data.readerProp["TopTen"];
                    list.Add(aux);
                }
                return list;
            }
            catch(Exception ex)
            {
                throw ex;
            }
            finally { data.Close(); }
        }
    }
}
