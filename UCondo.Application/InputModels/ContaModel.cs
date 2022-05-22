using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UCondo.Application.InputModels
{
    public class ContaModel
    {
        public ContaModel()
        {
            this.Childrens = new List<ContaModel>();
        }
        public int ID { get; set; }
        public string FileName { get; set; }
        public int ParentID { get; set; }
        public string CodConta { get; set; }

        public List<ContaModel> Childrens { get; set; }
    }
}
