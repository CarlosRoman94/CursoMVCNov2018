﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Inventario.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using System.Data.Entity.Core.Objects;
    using System.Linq;
    
    public partial class dbInventariosEntities : DbContext
    {
        public dbInventariosEntities()
            : base("name=dbInventariosEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Categorias> Categorias { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
    
        public virtual ObjectResult<ObtenerCategorias_Result> ObtenerCategorias(Nullable<int> soloActivos)
        {
            var soloActivosParameter = soloActivos.HasValue ?
                new ObjectParameter("soloActivos", soloActivos) :
                new ObjectParameter("soloActivos", typeof(int));
    
            return ((IObjectContextAdapter)this).ObjectContext.ExecuteFunction<ObtenerCategorias_Result>("ObtenerCategorias", soloActivosParameter);
        }
    }
}
