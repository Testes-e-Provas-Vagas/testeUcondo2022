using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UCondo.Core.DTOs
{
    public class ContaDTO
    {
        public int ID { get; set; }
        public string FileName { get; set; }
        public int ParentID { get; set; }
        public string CodConta { get; set; }
        public int TipoConta { get; set; }
        public int AceitaLancamentos { get; set; }


    }
}
