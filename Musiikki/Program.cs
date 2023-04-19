using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Musiikki
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Musiikkikappale garden = new Musiikkikappale("In The Garden", 10910);
            Console.WriteLine("Kappaleen " + garden.Nimi() + " pituus on " + garden.Pituus() + " sekuntia.");

            Console.Read();
        }
    }
}
