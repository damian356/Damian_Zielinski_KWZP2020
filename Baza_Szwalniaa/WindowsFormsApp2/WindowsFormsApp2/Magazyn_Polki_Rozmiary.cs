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
    
    public partial class Magazyn_Polki_Rozmiary
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Magazyn_Polki_Rozmiary()
        {
            this.Magazyn_Polki = new HashSet<Magazyn_Polki>();
        }
    
        public string ID_Rozmiar_Polki { get; set; }
        public Nullable<int> Wysokosc { get; set; }
        public Nullable<int> Szerokosc { get; set; }
        public Nullable<int> Glebokosc { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Polki> Magazyn_Polki { get; set; }
    }
}
