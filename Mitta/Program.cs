using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mitta
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Mittari mittari = new Mittari();

            while (!mittari.Taynna()) 
            {
                Console.WriteLine("FUBAR");
            }

            mittari.Lisaa();
            mittari.Lisaa();
            mittari.Lisaa();
            mittari.Lisaa();
            mittari.Lisaa();
            mittari.Lisaa();
            /* mittari.Vahenna();
            mittari.Vahenna();
            mittari.Vahenna(); */
            Console.WriteLine(mittari.Mitta());
            Console.Read();
        }
    }
}
