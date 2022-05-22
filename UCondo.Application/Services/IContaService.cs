using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCondo.Application.InputModels;

namespace UCondo.Application.Services
{
    public interface IContaService
    {

        public List<ContaModel> GetAll();
        public List<ContaModel> BuildTree(List<ContaModel> list);




    }
}
