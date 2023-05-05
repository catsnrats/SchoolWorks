using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    public class Elain
    { 
        // Elain-luokka luotu pääluokaksi
        private int _ika = 0;
        private string _nimi = "";
        public bool onLihanSyoja;
    
        public Elain()
        { }
        public Elain(string elainNimi, int elainIka)
        {
            _ika = elainIka;
            _nimi = elainNimi;
        }
        public void AsetaElaimenNimi(string elainNimi)
        {
            _nimi = elainNimi;
        }
        public void AsetaElaimenIka(int elainIka)
        {
            if (elainIka < 0)
            {
                Console.WriteLine("Ikä ei voi olla negatiivinen.");
            }
            else
            {
                _ika = elainIka;
            }
        }
        public void AsetaOnLihanSyoja(bool tosi)
        {
            onLihanSyoja = tosi;
        }
        public int PalautaElaimenIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return _ika;
        }
        public string PalautaElaimenNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return _nimi;
        }
        public string PalautaOnLihanSyoja() // Palauttaa onLihanSyoja arvon tekstinä
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
