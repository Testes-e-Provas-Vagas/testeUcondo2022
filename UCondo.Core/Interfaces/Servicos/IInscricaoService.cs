using UCondo.Core.DTOs;
using UCondo.Core.Entidades;

namespace UCondo.Core.Interfaces.Servicos
{
    public interface IInscricaoService
    {
        ResultadoInscricaoDTO Realizar(Aluno aluno, Unidade unidade, TurmaAtividade turmaAtividade);
    }
}
