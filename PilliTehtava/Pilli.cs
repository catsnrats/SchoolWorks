using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PilliTehtava
{
    internal class Pilli // Luokka Pilli
    {
        private string _aani; // Luokan suojattu (private) attribuutti

        public Pilli(String pillinAani) // Parametrillinen konstruktori Pilli
        {
            _aani = pillinAani;
        }

        public void soi() // Metodi parametrin tulostamiseen
        {
            Console.WriteLine(_aani);
        }
    }
}
