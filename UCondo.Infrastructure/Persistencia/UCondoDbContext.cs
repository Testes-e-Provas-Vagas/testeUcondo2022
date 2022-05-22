using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;
using UCondo.Core.Entidades;

namespace UCondo.Infrastructure.Persistence
{
    public class UCondoDbContext  : DbContext
    {
        public UCondoDbContext(DbContextOptions options) : base(options)
        {
            
        }

        public DbSet<Conta> Contas { get; set; }

    }
}
