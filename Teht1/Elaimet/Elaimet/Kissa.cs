using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    class Kissa
    {
        // Attribuutit oliota varten
        public int ika;
        public String nimi;

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
            nimi = kissaNimi;
        }
        public String PalautaKissanNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public void AsetaKissanIka(int kissaIka) // Metodi olion iän asettamiseen
        {
            int i = 0; // Iän vertailuarvo

            if (aged(kissaIka, i))
            {
                Console.WriteLine("Kissan ikä ei voi olla negatiivinen.");
            }
            else 
            {
                ika = kissaIka;
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
