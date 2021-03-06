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
    
    public partial class Zamowienia
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Zamowienia()
        {
            this.Faktury = new HashSet<Faktury>();
            this.Magazyn_Dostarczenia_Zewn = new HashSet<Magazyn_Dostarczenia_Zewn>();
            this.Magazyn_Zamowienia_Dostawy = new HashSet<Magazyn_Zamowienia_Dostawy>();
            this.Proces_Produkcyjny = new HashSet<Proces_Produkcyjny>();
            this.Proces_Zamowienie = new HashSet<Proces_Zamowienie>();
            this.Zamowienie_Produkt = new HashSet<Zamowienie_Produkt>();
        }
    
        public int ID_Zamowienia { get; set; }
        public Nullable<int> ID_Klienta { get; set; }
        public Nullable<System.DateTime> Data_Zlozenia { get; set; }
        public Nullable<System.DateTime> Data_Zakonczenia { get; set; }
        public Nullable<bool> Dokumentacja { get; set; }
        public Nullable<int> ID_Pracownika { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Faktury> Faktury { get; set; }
        public virtual Klienci Klienci { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Dostarczenia_Zewn> Magazyn_Dostarczenia_Zewn { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Magazyn_Zamowienia_Dostawy> Magazyn_Zamowienia_Dostawy { get; set; }
        public virtual Pracownicy Pracownicy { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proces_Produkcyjny> Proces_Produkcyjny { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Proces_Zamowienie> Proces_Zamowienie { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Zamowienie_Produkt> Zamowienie_Produkt { get; set; }
    }
}
