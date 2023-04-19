using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Musiikki
{
    internal class Musiikkikappale
    {
        private string nimi; // Muuttujat luokalle Musiikkikappale
        private int pituus;

        public Musiikkikappale(string nimi, int pituus) // Konstruktori parametreineen
        {
            this.nimi = nimi;
            this.pituus = pituus;
        }
        public string Nimi() // Palauttaa kappaleen nimen
        { return nimi; }
        public int Pituus() // Palauttaa kappaleen pituuden
        {  return pituus; }
    }
}
