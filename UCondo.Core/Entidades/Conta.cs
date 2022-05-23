using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UCondo.Core.Entidades
{
   [Table("TblConta")]
    public class Conta
    {
       // [Key]
        public int ID { get; set; }
        public string FileName { get; set; }
        public int ParentID { get; set; }
        public string CodConta { get; set; }
        public int TipoConta { get; set; }


    }
}
