using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UCondo.Core.DTOs;

namespace UCondo.Core.Entidades
{
   [Table("TblConta2")]
    public class Conta
    {
       // [Key]
       [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }
        public string FileName { get; set; }
        public int ParentID { get; set; }
        public string CodConta { get; set; }
        public int TipoConta { get; set; }
        public int AceitaLancamentos { get; set; }


        public ContaDTO ToDto()
        {
            return new ContaDTO()
            {
            ID = this.ID,
            FileName = this.FileName,
            CodConta = this.CodConta,
            ParentID = this.ParentID,
            TipoConta = this.TipoConta,
            AceitaLancamentos = this.AceitaLancamentos
            };
        }

        public Conta FromDto(ContaDTO dto)
        {
            this.ID = dto.ID;
            this.FileName = dto.FileName;
            this.CodConta = dto.CodConta;
            this.ParentID = dto.ParentID;
            this.TipoConta = dto.TipoConta;
            this.AceitaLancamentos = dto.AceitaLancamentos;
            return this;
        }



    }
}
