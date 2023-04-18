using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tuote
{
    internal class Tuote
    {
        // Luokan muuttujat merkkijono, desimaali- ja kokonaisluku
        public string nimi;
        public double hinta;
        public int maara;

        // Parametrillinen konstruktori Tuote
        public Tuote(String nimiAlussa, double hintaAlussa, int maaraAlussa)
        {
            nimi = nimiAlussa;
            hinta = hintaAlussa;
            maara = maaraAlussa;
        }

        public void TulostaTuote() // Metodi olion tietojen tulostukseen
        {
            Console.WriteLine(nimi + "," + " hinta: " + hinta + " eur, " + maara + " kpl");
        } 
    }
}
