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
    
    public partial class Magazyn_Miejsca
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Magazyn_Miejsca()
        {
            this.Magazyn_Dostarczenia_Wewn = new HashSet<Magazyn_Dostarczenia_Wewn>();
            this.Magazyn_Dostarczenia_Zewn = new HashSet<Magazyn_Dostarczenia_Zewn>();
        }
    
        public string ID_Miejsca { get; set; }
        public string Nazwa { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Dostarczenia_Wewn> Magazyn_Dostarczenia_Wewn { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Dostarczenia_Zewn> Magazyn_Dostarczenia_Zewn { get; set; }
    }
}
