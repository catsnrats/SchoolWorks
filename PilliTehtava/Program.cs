using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PilliTehtava
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Luokasta pilli johdetut oliot
            Pilli sorsapilli = new Pilli("Kwaak");
            Pilli kukkopilli = new Pilli("Peef");

            Console.WriteLine(sorsapilli.aani); // Kokeiltu oliota

            Console.Read();
        }
    }
}
