//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WindowsFormsApp2
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rodzaj_Maszyny
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Rodzaj_Maszyny()
        {
            this.Maszyny = new HashSet<Maszyny>();
            this.Maszyny_Proces = new HashSet<Maszyny_Proces>();
        }
    
        public int ID_Rodzaj_Maszyny { get; set; }
        public string Rodzaj_Maszyny1 { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Maszyny> Maszyny { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Maszyny_Proces> Maszyny_Proces { get; set; }
    }
}
