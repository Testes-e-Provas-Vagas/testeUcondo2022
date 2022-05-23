using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCondo.Core.Entidades;

namespace UCondo.Core.Interfaces.Repositorios
{
    public interface IContaRepository
    {
        public List<Conta> GetAll();

        public Conta GetByID(string ID);

        public List<Conta> UsandoContext();



    }
}
