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
    
    public partial class T_ORDENES
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public T_ORDENES()
        {
            this.T_ORDENES_PLATOS = new HashSet<T_ORDENES_PLATOS>();
        }
    
        public int ID { get; set; }
        public int NUM_MESA { get; set; }
        public System.DateTime FECHA_CREACION { get; set; }
        public string ID_MESERO { get; set; }
        public string CLIENTE_NOMBRE { get; set; }
        public string ESTADO { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<T_ORDENES_PLATOS> T_ORDENES_PLATOS { get; set; }
    }
}
