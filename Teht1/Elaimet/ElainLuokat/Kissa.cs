using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Kissa
    {
        // Attribuutit oliota varten
        private int ika = 0;
        public string nimi = "Miuku";
        private string naNames = "Hilda";

        public Kissa() // Parametriton konstruktori
        {
        }
        public Kissa(string kissaNimi, int kissaIka) // Parametrillinen konstruktori
        {
            ika = kissaIka;
            nimi = kissaNimi;
        }
        public void AsetaKissanNimi(string kissaNimi) // Metodi olion nimeämiseen
        {
            // Vertaa naNames-muuttujaa kissaNimi-muuttujaan välittämättä onko fontti iso vai pieni
            if (naNames.Equals(kissaNimi, StringComparison.OrdinalIgnoreCase))
            {
                Console.WriteLine("Kissan nimi ei voi olla Hilda.");
            }
            else
            {
                nimi = kissaNimi;
            }
        }
        public string PalautaKissanNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public void AsetaKissanIka(int kissaIka) // Metodi olion iän asettamiseen
        {
            int i = 0; // Iän vertailuarvo

            if (aged(kissaIka, i)) // Käyttää aged-metodia iän vertaamiseen.
            {
                Console.WriteLine("Ikä ei voi olla negatiivinen.");
            }
            else
            {
                ika = kissaIka;
            }
        }
        public int Ika // kokeiltu getteriä ja setteriä privaattimuuttujan palauttamiseen
        {
            set { ika = value; }
            get { return ika; }
        }
        static bool aged(int kissaIka, int i) // Palauttaa boolean tiedon
        {
            return kissaIka < i;
        }
        public int PalautaKissanIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return ika;
        }
        public override string ToString() // ToString()-metodi olion kenttien tulostamiseen
        {
            return "Kissa: " + PalautaKissanNimi() + " ikä " + PalautaKissanIka();
        }
    } 
}
