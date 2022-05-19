using UCondo.Core.Interfaces.Servicos;
using System;
using System.Threading.Tasks;

namespace UCondo.Infrastructure.Servicos
{
    public class AzureFileStorageService : IFileStorageService
    {
        public Task AddFile(byte[] content, string fileName)
        {
            throw new NotImplementedException();
        }
    }
}
