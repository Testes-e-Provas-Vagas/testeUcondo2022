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
using UCondo.Core.DTOs;

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

        public Conta CreateConta(ContaDTO dto)
        {
            try
            {
                Conta conta = new Conta();
                var dado = conta.FromDto(dto);
                _uCondoDbContext.Contas.Add(dado);
                _uCondoDbContext.SaveChanges();
                return this.GetByID(dado.ID.ToString());
            }
            catch (Exception)
            {

                return null;
            }

        }

        public int DeleteConta(string id)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(conexao))
                {
                    var dado = connection.Execute("Delete FROM dbo.TblConta where ID='" + id);
                    if (dado > 0) connection.Execute("Delete FROM dbo.TblConta where ParentID='" + id);
                    return 1;
                }
            }
            catch (Exception)
            {

                return 0;
            }
        }

        public List<Conta> GetAll()
        {
            using (SqlConnection connection = new SqlConnection(conexao))
            {
                var dados = connection.Query<Conta>(
                    "SELECT * FROM dbo.TblConta order by ID");

                return dados.ToList();
            }
        }

        public Conta GetByID(string ID)
        {

            using (SqlConnection connection = new SqlConnection(conexao))
            {
                var dado = connection.QueryFirst<Conta>("SELECT * FROM dbo.TblConta where ID='" + ID + "' order by ID");

                return dado;
            }
        }

        public string ObterCodContaNova(string parentID, string filhoID)
        {
            string ret = "";
            try
            {
                using (SqlConnection connection = new SqlConnection(conexao))
                {
                    var dado = connection.QueryFirst<string>("SELECT max(ID) FROM dbo.TblConta where parentID='" + parentID + "'");

                    var ext = dado.Length;

                    string filho, subs;
                    filho = dado.Substring(1, 1);
                    if (dado.Length>2)
                    {
                        subs = dado.Substring(2, dado.Length - 2);
                        ret = parentID + "." + filho + "." + (int.Parse(subs) + 1).ToString();
                    }
                    else
                    {
                        ret = parentID + "." + (int.Parse(filho) + 1).ToString();
                    }

                    return ret;
                }
            }
            catch (Exception ex)
            {

                return ex.Message;
            }
        }

        public Conta UpdateConta(ContaDTO dto, string id)
        {
            try
            {
                var cta = _uCondoDbContext.Contas.Find(id);
                cta.FileName = dto.FileName;
                cta.TipoConta = dto.TipoConta;
                cta.ParentID = dto.ParentID;
                cta.CodConta = dto.CodConta;
                _uCondoDbContext.Contas.Update(cta);
                _uCondoDbContext.SaveChanges();
                return this.GetByID(cta.ID.ToString());
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<Conta> UsandoContext()
        {
            var dados = _uCondoDbContext.Contas.ToList();
            return dados;
        }

    }
}
