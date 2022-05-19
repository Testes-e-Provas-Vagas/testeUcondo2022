using UCondo.Core.DTOs;
using System.Threading.Tasks;

namespace UCondo.Core.Interfaces.Servicos
{
    public interface IErpIntegrationService
    {
        Task AdicionarPessoa(AdicionarPessoaErpDTO pessoa);
    }
}
