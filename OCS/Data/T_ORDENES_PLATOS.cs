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
    
    public partial class T_ORDENES_PLATOS
    {
        public int ID { get; set; }
        public int ID_ORDEN { get; set; }
        public int ID_PLATO { get; set; }
        public System.DateTime FECHA_CREACION { get; set; }
        public string OBSERVACIONES { get; set; }
        public double CANTIDAD { get; set; }
        public double PRECIO_UNI { get; set; }
        public double PRECIO { get; set; }
        public string ESTADO { get; set; }
    
        public virtual T_MESAS T_MESAS { get; set; }
        public virtual T_ORDENES T_ORDENES { get; set; }
        public virtual T_USUARIOS T_USUARIOS { get; set; }
        public virtual T_MENU T_MENU { get; set; }
    }
}
