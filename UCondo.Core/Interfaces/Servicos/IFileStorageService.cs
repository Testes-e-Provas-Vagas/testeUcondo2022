using System.Threading.Tasks;

namespace UCondo.Core.Interfaces.Servicos
{
    public interface IFileStorageService
    {
        Task AddFile(byte[] content, string fileName);
    }
}
