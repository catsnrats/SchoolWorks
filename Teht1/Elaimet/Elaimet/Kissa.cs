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
        public Kissa(int kissaIka, String kissaNimi) // Parametrillinen konstruktori
        {
            ika = kissaIka;
            nimi = kissaNimi;
        }
        public void AsetaKissanNimi(String kissaNimi) 
        {
            nimi = kissaNimi;
        }
        public String PalautaKissanNimi()
        { 
            return nimi;
        }
        public int PalautaKissanIka()
        {
            return ika;
        }
    }
}
