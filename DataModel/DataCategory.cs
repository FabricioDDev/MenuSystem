using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DB;
using DomainModel;

namespace DataModel
{
    public class DataCategory
    {
        public DataCategory()
        {
            data = new DataAccess();
        }
        private DataAccess data;
        public List<Category> Listing()
        {
            List<Category> list = new List<Category>();
            try
            {
                data.Query("select Id, Description, Logo from Category");
                data.Read();
                while (data.readerProp.Read())
                {
                    Category aux = new Category();
                    aux.Id = (int)data.readerProp["Id"];
                    aux.Description = (string)data.readerProp["Description"];
                    aux.Logo = (string)data.readerProp["Logo"];
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
