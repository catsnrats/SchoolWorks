using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mitta
{
    internal class Mittari
    {
        private int _mitta; // Private kenttä luokkaan Mittari

        public Mittari() // Paremetritön konstruktori. Asettaa _mitta-kentän arvoksi 0
        { 
            _mitta = 0;
        }
        public void Lisaa() // Kasvattaa muuttujaa _mitta yhdellä
        {
            _mitta++;
        }
        public void Vahenna() // Vähentää muuttujaa _mitta yhdellä
        {
            _mitta--;
        }
        public Boolean Taynna()
        {
            if (_mitta >= 5)
            {
                return true;
            }
            else
                return false;
        }
        public int Mitta()
        { return _mitta; }
    }
}
