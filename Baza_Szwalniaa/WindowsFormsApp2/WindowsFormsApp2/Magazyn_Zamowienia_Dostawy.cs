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
    
    public partial class Magazyn_Zamowienia_Dostawy
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Magazyn_Zamowienia_Dostawy()
        {
            this.Magazyn_Dostarczenia_Wewn = new HashSet<Magazyn_Dostarczenia_Wewn>();
        }
    
        public int ID_Dostawy { get; set; }
        public Nullable<int> ID_Zamowienia { get; set; }
        public string Data_Dostawy_Planowana { get; set; }
        public string Data_Dostawy_Rzeczywista { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Dostarczenia_Wewn> Magazyn_Dostarczenia_Wewn { get; set; }
        public virtual Zamowienia Zamowienia { get; set; }
    }
}