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
    
    public partial class Obsluga_Techniczna
    {
        public int ID_Obslugi { get; set; }
        public int ID_Maszyny { get; set; }
        public int ID_Rodzaj_Obslugi { get; set; }
        public System.DateTime Data_Wykonania { get; set; }
        public int ID_Pracownika { get; set; }
    
        public virtual Czesci_Obsluga Czesci_Obsluga { get; set; }
        public virtual Maszyny Maszyny { get; set; }
        public virtual Pracownicy Pracownicy { get; set; }
        public virtual Rodzaj_Obslugi Rodzaj_Obslugi { get; set; }
    }
}
