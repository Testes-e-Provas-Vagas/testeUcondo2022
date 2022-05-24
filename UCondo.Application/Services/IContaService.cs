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
        public ContaModel GetByID(string ID);
        public List<ContaModel> GetChildren(List<ContaModel> list, string ID);
        ContaModel CreateConta(ContaModel conta);
        ContaModel UpdateConta(ContaModel conta, string id);
        public bool DeleteConta(string id);
        string ObterCodContaNova(string parentID, string filhoID);
    }
}
