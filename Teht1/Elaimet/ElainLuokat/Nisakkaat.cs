using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public abstract class Nisakkaat : Elain
    {
        public Nisakkaat()
        { }
        public Nisakkaat(string nimi, int ika, string nisakas) : base(nimi, ika, nisakas)
        {
        }
    }
}
