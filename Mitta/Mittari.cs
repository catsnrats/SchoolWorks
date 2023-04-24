using System;
using System.Collections.Generic;
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
        public void Lisaa()
        {
            _mitta += 1;
        }
        public void Vahenna()
        {
            _mitta -= 1;
        }
        public int Mitta()
        { return _mitta; }
        public Boolean Taynna()
        {
            if (_mitta >= 5);
                return false; 
        }
    }
}
