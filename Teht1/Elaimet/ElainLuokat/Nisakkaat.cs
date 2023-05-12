using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Nisakkaat : Elain
    {
        public Nisakkaat()
        { }
        public Nisakkaat(string nisakas, int ika) : base(nisakas, ika)
        {
        }
        public override void Aantele()
        {
            Console.WriteLine("Määkii!");
        }
    }
}
