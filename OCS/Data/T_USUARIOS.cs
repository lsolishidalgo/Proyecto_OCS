//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OCS.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class T_USUARIOS
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_USUARIOS()
        {
            this.T_ORDENES_PLATOS = new HashSet<T_ORDENES_PLATOS>();
        }
    
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Identificacion { get; set; }
        public string Celular { get; set; }
        public string Email { get; set; }
        public string Rol { get; set; }
        public string Estado { get; set; }
        public Nullable<System.DateTime> FechaRegistro { get; set; }
        public string UsuarioRegistro { get; set; }
        public string Password { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ORDENES_PLATOS> T_ORDENES_PLATOS { get; set; }
    }
}