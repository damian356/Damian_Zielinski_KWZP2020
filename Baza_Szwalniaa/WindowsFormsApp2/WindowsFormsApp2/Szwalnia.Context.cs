﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Baza_szwalniaEntities : DbContext
    {
        public Baza_szwalniaEntities()
            : base("name=Baza_szwalniaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Czesci_Obsluga> Czesci_Obsluga { get; set; }
        public virtual DbSet<Dokumentacja_Proces> Dokumentacja_Proces { get; set; }
        public virtual DbSet<Dokumentacje> Dokumentacje { get; set; }
        public virtual DbSet<Elementy_Proces> Elementy_Proces { get; set; }
        public virtual DbSet<Etapy_W_Procesie> Etapy_W_Procesie { get; set; }
        public virtual DbSet<Etat> Etat { get; set; }
        public virtual DbSet<Faktury> Faktury { get; set; }
        public virtual DbSet<Faktury_Zewnetrzne> Faktury_Zewnetrzne { get; set; }
        public virtual DbSet<Grupa> Grupa { get; set; }
        public virtual DbSet<Jezyk> Jezyk { get; set; }
        public virtual DbSet<Klienci> Klienci { get; set; }
        public virtual DbSet<Magazyn_Dostarczenia_Wewn> Magazyn_Dostarczenia_Wewn { get; set; }
        public virtual DbSet<Magazyn_Dostarczenia_Zewn> Magazyn_Dostarczenia_Zewn { get; set; }
        public virtual DbSet<Magazyn_Dostawcy_Zaopatrzenie> Magazyn_Dostawcy_Zaopatrzenie { get; set; }
        public virtual DbSet<Magazyn_Elementy> Magazyn_Elementy { get; set; }
        public virtual DbSet<Magazyn_Elementy_Cechy_Slownik> Magazyn_Elementy_Cechy_Slownik { get; set; }
        public virtual DbSet<Magazyn_Elementy_Jednostki> Magazyn_Elementy_Jednostki { get; set; }
        public virtual DbSet<Magazyn_Elementy_Typy> Magazyn_Elementy_Typy { get; set; }
        public virtual DbSet<Magazyn_Kurierzy> Magazyn_Kurierzy { get; set; }
        public virtual DbSet<Magazyn_Miejsca> Magazyn_Miejsca { get; set; }
        public virtual DbSet<Magazyn_Oferta> Magazyn_Oferta { get; set; }
        public virtual DbSet<Magazyn_Polki> Magazyn_Polki { get; set; }
        public virtual DbSet<Magazyn_Polki_Rozmiary> Magazyn_Polki_Rozmiary { get; set; }
        public virtual DbSet<Magazyn_Umowy_Kurierzy> Magazyn_Umowy_Kurierzy { get; set; }
        public virtual DbSet<Magazyn_Zamowienia_Dostawy> Magazyn_Zamowienia_Dostawy { get; set; }
        public virtual DbSet<Maszyny> Maszyny { get; set; }
        public virtual DbSet<Maszyny_Proces> Maszyny_Proces { get; set; }
        public virtual DbSet<Obsluga_Techniczna> Obsluga_Techniczna { get; set; }
        public virtual DbSet<Pensja> Pensja { get; set; }
        public virtual DbSet<Pracownicy> Pracownicy { get; set; }
        public virtual DbSet<Proces_Produkcyjny> Proces_Produkcyjny { get; set; }
        public virtual DbSet<Proces_Technologiczny> Proces_Technologiczny { get; set; }
        public virtual DbSet<Proces_Zamowienie> Proces_Zamowienie { get; set; }
        public virtual DbSet<Produkty> Produkty { get; set; }
        public virtual DbSet<Realizacja_Procesu> Realizacja_Procesu { get; set; }
        public virtual DbSet<Rodzaj_Dokumentacji> Rodzaj_Dokumentacji { get; set; }
        public virtual DbSet<Rodzaj_Etapu> Rodzaj_Etapu { get; set; }
        public virtual DbSet<Rodzaj_Maszyny> Rodzaj_Maszyny { get; set; }
        public virtual DbSet<Rodzaj_Obslugi> Rodzaj_Obslugi { get; set; }
        public virtual DbSet<Rodzaj_Umowy> Rodzaj_Umowy { get; set; }
        public virtual DbSet<Stanowisko> Stanowisko { get; set; }
        public virtual DbSet<Zamowienia> Zamowienia { get; set; }
        public virtual DbSet<Zamowienie_Produkt> Zamowienie_Produkt { get; set; }
        public virtual DbSet<Znajomosc_Jezykow> Znajomosc_Jezykow { get; set; }
        public virtual DbSet<Kontrola_Efektywnosci> Kontrola_Efektywnosci { get; set; }
        public virtual DbSet<Koszt_Jednostkowy> Koszt_Jednostkowy { get; set; }
        public virtual DbSet<Material_Na_Produkcji> Material_Na_Produkcji { get; set; }
        public virtual DbSet<Pracownicy_Zatrudnienie> Pracownicy_Zatrudnienie { get; set; }
        public virtual DbSet<Przydzial_Zasobow> Przydzial_Zasobow { get; set; }
        public virtual DbSet<Zapotrzebowanie_Opakowan> Zapotrzebowanie_Opakowan { get; set; }
    }
}
