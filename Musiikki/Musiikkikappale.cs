using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Musiikki
{
    internal class Musiikkikappale
    {
        private string _nimi; // Muuttujat luokalle Musiikkikappale
        private int _pituus;

        public Musiikkikappale(string nimi, int pituus) // Konstruktori parametreineen
        {
            this._nimi = nimi;
            this._pituus = pituus;
        }
        public string Nimi() // Palauttaa kappaleen nimen
        { return _nimi; }
        public int Pituus() // Palauttaa kappaleen pituuden
        {  return _pituus; }
    }
}
