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

            // Kutsutaan soi()-metodia yllä luodoilla olioilla
            sorsapilli.soi();
            kukkopilli.soi();
            sorsapilli.soi();

            Console.Read();
        }
    }
}
