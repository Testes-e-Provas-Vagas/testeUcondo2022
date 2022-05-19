using UCondo.Application.InputModels;
using UCondo.Application.ViewModels;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace UCondo.Application.Services
{
    public interface IUnidadeService
    {
        Task<int> Adicionar(UnidadeInputModel unidadeInputModel);
        Task<List<UnidadeItemViewModel>> ObterTodos();
        Task<UnidadeViewModel> ObterPorId(int id);
    }
}
