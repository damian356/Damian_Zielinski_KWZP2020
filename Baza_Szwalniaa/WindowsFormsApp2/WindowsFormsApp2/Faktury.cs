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
    
    public partial class Faktury
    {
        public int ID_Faktury { get; set; }
        public Nullable<int> ID_Zamowienia { get; set; }
        public Nullable<int> ID_Klienta { get; set; }
        public float Cena_Netto { get; set; }
        public float Cena_Brutto { get; set; }
        public float Podatek_VAT { get; set; }
    
        public virtual Klienci Klienci { get; set; }
        public virtual Zamowienia Zamowienia { get; set; }
    }
}
