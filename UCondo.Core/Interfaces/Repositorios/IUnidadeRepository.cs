using UCondo.Core.Entidades;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace UCondo.Core.Interfaces.Repositorios
{
    public interface IUnidadeRepository
    {
        Task<int> Adicionar(Unidade unidade);
        Task<List<Unidade>> ObterTodos();
        Task<Unidade> ObterPorId(int id);
    }
}
