using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCondo.Core.Entidades;
using UCondo.Core.Interfaces.Repositorios;
using Dapper;
using Microsoft.Data.SqlClient;
using UCondo.Infrastructure.Persistence;

namespace UCondo.Infrastructure.Persistencia.Repositorios
{
    public class ContaRepository : IContaRepository
    {
        private readonly UCondoDbContext _uCondoDbContext;
        private readonly string conexao;
        private IConfiguration configuration;
        public ContaRepository(IConfiguration _configuration, UCondoDbContext uCondoDbContext)
        {
            configuration = _configuration;
            conexao = configuration.GetConnectionString("CondoConn");
            _uCondoDbContext = uCondoDbContext;
        }
        public List<Conta> GetAll()
        {
            using (SqlConnection connection = new SqlConnection(conexao))
            {
                var dados = connection.Query<Conta>(
                    "SELECT * FROM dbo.Treeviewtbl order by ID");
               
                return dados.ToList();
            }
        }

        public Conta GetByID(string ID)
        {

            using (SqlConnection connection = new SqlConnection(conexao))
            {
                var dado = connection.QueryFirst<Conta>("SELECT * FROM dbo.Treeviewtbl where ID='" + ID + "' order by ID");

                return dado;
            }
        }

        public List<Conta> UsandoContext()
        {
            var dados = _uCondoDbContext.Contas.ToList();
            return dados;
        }

    }
}
