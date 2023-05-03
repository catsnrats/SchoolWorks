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

<<<<<<< HEAD
        public Mittari() // Paremetritön konstruktori. Asettaa _mitta kentän arvoksi 0
=======
        public Mittari() // Paremetritön konstruktori. Asettaa _mitta-kentän arvoksi 0
>>>>>>> 661424b66ff5a340e5332d0b211a090e7bd5ceb2
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
        public Boolean Taynna() // Metodi palauttaa true, jos _mitta >= 5, muutoin palauttaa false
        {
            if (_mitta >= 5)
            {
                return true;
            }
            else
                return false;
        }
        public int Mitta() // Metodi _mitta-muuttujan palauttamiseen
        { return _mitta; }
    }
}
