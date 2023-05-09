using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Elain
    { 
        // Elain-luokka luotu pääluokaksi
        public int ika = 0;
        public string nimi = "";
        public bool onLihanSyoja;
    
        public Elain()
        { }
        public Elain(string elainNimi, int elainIka)
        {
            ika = elainIka;
            nimi = elainNimi;
        }
        // Alla luokan metodit (ikä ei voi olla negatiivinen)
        public void AsetaElaimenNimi(string elainNimi)
        {
            nimi = elainNimi;
        }
        public void AsetaElaimenIka(int elainIka)
        {
            if (elainIka < 0)
            {
                Console.WriteLine("Ikä ei voi olla negatiivinen.");
            }
            else
            {
                ika = elainIka;
            }
        }
        public void AsetaOnLihanSyoja(bool vastaus)
        {
            onLihanSyoja = vastaus;
        }
        public int PalautaElaimenIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return ika;
        }
        public string PalautaElaimenNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public string PalautaOnLihanSyoja() // Palauttaa onLihanSyoja arvon tekstinä riippuen onLihanSyoja arvosta
        {
            if (onLihanSyoja)
            {
                return "On lihansyöjä.";
            }
            else 
            {
                return "Ei syö lihaa";
            }
        }
    }
}
