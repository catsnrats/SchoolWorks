using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    internal class Elain
    { 
        private int _ika = 0;
        public string nimi = "";
        public bool onLihanSyoja = true;
    
        public Elain()
        { }
        public Elain(string elainNimi, int elainIka)
        {
            _ika = elainIka;
            nimi = elainNimi;
        }
        public void AsetaElaimenNimi(string elainNimi)
        { }
        public void AsetaKissanIka(int elainIka)
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
        public bool AsetaOnLihanSyoja()
        {
            return onLihanSyoja;
        }
        public int PalautaElaimenIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return _ika;
        }
        public string PalautaElaimenNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public bool PalautaOnLihanSyoja()
        {
            return onLihanSyoja;
        }
    }
}
