using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Musiikki
{
    internal class Musiikkikappale
    {
        private string nimi;
        private int pituus;

        public Musiikkikappale(string nimi, int pituus)
        {
            this.nimi = nimi;
            this.pituus = pituus;
        }
    }
}
