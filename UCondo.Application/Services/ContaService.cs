using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCondo.Application.InputModels;
using UCondo.Core.Interfaces.Repositorios;

namespace UCondo.Application.Services
{
    public class ContaService : IContaService
    {
        private IContaRepository _iContaRepository;
        public ContaService(IContaRepository iContaRepository)
        {
            _iContaRepository = iContaRepository;
        }
        public List<ContaModel> GetAll()
        {
            var contas = _iContaRepository.GetAll();

            var contasModel = from itens in contas
                              select new ContaModel
                              {
                                  ID = itens.ID,
                                  FileName = itens.FileName,
                                  CodConta = itens.CodConta,
                                  ParentID = itens.ParentID
                              };

            return contasModel.ToList();
        }


        public List<ContaModel> BuildTree(List<ContaModel> list)
        {
            List<ContaModel> returnList = new List<ContaModel>();
            //find top levels items
            var topLevels = list.Where(a => a.ParentID == list.OrderBy(b => b.ParentID).FirstOrDefault().ParentID);
            returnList.AddRange(topLevels);

            foreach (var i in topLevels)
            {
                GetTreeview(list, i, ref returnList);
            }
            return returnList;
        }



        //Recursion method for recursively get all child nodes
        public void GetTreeview(List<ContaModel> list, ContaModel current, ref List<ContaModel> returnList)
        {
            //get child of current item
            var childs = list.Where(a => a.ParentID == current.ID).ToList();
            current.Childrens = new List<ContaModel>();
            current.Childrens.AddRange(childs);
            foreach (var i in childs)
            {
                GetTreeview(list, i, ref returnList);
            }
        }

        public ContaModel GetByID(string ID)
        {
            var curr = _iContaRepository.GetByID(ID);
            var childrens = _iContaRepository.GetAll().Where(x => x.ParentID == int.Parse(ID)).ToList();

            var childrensModel = (from itn in childrens
                                  select new ContaModel
                                  { ID = itn.ID, ParentID = itn.ParentID, CodConta = itn.CodConta, FileName = itn.FileName })
                                  .ToList();


            var contaModel = new ContaModel
            {
                ID = curr.ID,
                FileName = curr.FileName,
                CodConta = curr.CodConta,
                ParentID = curr.ParentID,
                Childrens = childrensModel
            };
            return contaModel;
        }

        public List<ContaModel> GetChildren(List<ContaModel> list, string ID)
        {
            throw new NotImplementedException();
        }
    }
}
