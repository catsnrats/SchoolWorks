using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    class Kissa
    {
        // Attribuutit oliota varten
        private int ika = 0;
        public String nimi = "Miuku";
        private String naNames = "Hilda";

        public Kissa() // Parametriton konstruktori
        {
        }
        public Kissa(String kissaNimi, int kissaIka) // Parametrillinen konstruktori
        {
            ika = kissaIka;
            nimi = kissaNimi;
        }
        public void AsetaKissanNimi(String kissaNimi) // Metodi olion nimeämiseen
        {
            // String naNames = "Hilda";
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
        public String PalautaKissanNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public void AsetaKissanIka(int kissaIka) // Metodi olion iän asettamiseen
        {
            int i = 0; // Iän vertailuarvo

            if (aged(kissaIka, i)) // Käyttää aged-metodia iän vertaamiseen.
            {
                Console.WriteLine("Kissan ikä ei voi olla negatiivinen.");
            }
            else
            {
                ika = kissaIka;
            }
        }
        public int Ika // kokeiltu getteriä ja setteriä privaattimuuttujan palauttamiseen
        {
            get { return ika; }
            set { ika = value; }
        }
        // Kokeiltu suojata kissan nimi ja getin ja setin toimintaa
        // Jatketaan nimen testaamista myöhemmin
        public string Name 
        {
            get { return nimi; }
            set
            {
                if (naNames.Equals(nimi, StringComparison.OrdinalIgnoreCase))
                    {
                    nimi = "Mauku";
                }
                else
                { nimi = "Miuku"; }
            }
        }
        static bool aged(int kissaIka, int i) // Palauttaa boolean tiedon jos muutos ei toteudu
        {
            return kissaIka < i;
        }
        public int PalautaKissanIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return ika;
        }
    } 
}
