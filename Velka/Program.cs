using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Velka
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Velka laina = new Velka(1000, 0.05); // Velka-luokasta johdettu olio laina
            // Alla kutsutaan funktioita, jotta nähdään OdotaVuosi()-funktion yhtälön vaikutus...
            laina.TulostaSaldo();
            laina.OdotaVuosi();
            laina.TulostaSaldo();
            laina.OdotaVuosi();
            laina.TulostaSaldo();
            laina.OdotaVuosi();
            laina.TulostaSaldo();

            Console.Read();
        }
    }
}
