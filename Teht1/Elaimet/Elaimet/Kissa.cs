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
        private int ika;
        public String nimi;

        public Kissa() // Parametriton konstruktori
        {
        }
        public Kissa(int kissaIka, String kissaNimi) // Parametrillinen konstruktori
        {
            this.ika = kissaIka;
            this.nimi = kissaNimi;
        }
        public void AsetaKissanNimi(String kissaNimi) 
        {
            this.nimi = kissaNimi;
        }
        public String PalautaKissanNimi(String kissaNimi)
        { 
            return this.nimi;
        }
        public int PalautaKissanIka(int kissaIka)
        {
            return this.ika;
        }
    }
}
