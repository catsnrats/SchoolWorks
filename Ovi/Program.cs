using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ovi
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Luodaan olio alexander ja kutsutaan koputa()-metodia
            Ovi alexander = new Ovi();
            alexander.koputa();

            Console.Read();
        }
    }
}
