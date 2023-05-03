using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Koira
    {
        // Attribuutit oliota varten
        private int ika = 0;
        private string nimi = "Haukkuli";
        private string naNames = "Musti";

        public Koira() // Parametriton konstruktori
        {
        }
        public Koira(string koiraNimi, int koiraIka) // Parametrillinen konstruktori
        {
            ika = koiraIka;
            Nimi = koiraNimi;
        }
        public void AsetakoiranNimi(String koiraNimi) // Metodi olion nimeämiseen
        {
            // Vertaa naNames-muuttujaa koiraNimi-muuttujaan välittämättä onko fontti iso vai pieni
            if (naNames.Equals(koiraNimi, StringComparison.OrdinalIgnoreCase))
            {
                Console.WriteLine("koiran nimi ei voi olla Musti.");
            }
            else
            {
                nimi = koiraNimi;
            }
        }
        public String PalautakoiranNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public void AsetakoiranIka(int koiraIka) // Metodi olion iän asettamiseen
        {
            int i = 0; // Iän vertailuarvo

            if (aged(koiraIka, i)) // Käyttää aged-metodia iän vertaamiseen.
            {
                Console.WriteLine("koiran ikä ei voi olla negatiivinen.");
            }
            else
            {
                ika = koiraIka;
            }
        }
        public int Ika // kokeiltu getteriä ja setteriä privaattimuuttujan palauttamiseen
        {
            set { ika = value; }
            get { return ika; }
        }
        public string Nimi // Kokeiltu get ja set -tapaa nimikentän tarkistukseen. ( ei voi olla Musti )
        {
            set {
                if (value == "Musti") // Jos nimi-kenttään kirjoittaa "Musti", asettaa kentän arvoksi "Haukkuli".
                {
                    nimi = "Haukkuli";
                }
                else 
                {
                    nimi = value;
                }
            }
            get { return nimi; }
        }
        static bool aged(int koiraIka, int i) // Palauttaa boolean tiedon
        {
            return koiraIka < i;
        }
        public int PalautakoiranIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return ika;
        }
        public override string ToString() // ToString()-metodi olion kenttien tulostamiseen
        {
            return "koira: " + PalautakoiranNimi() + " ikä " + PalautakoiranIka();
        }
    } 
}
