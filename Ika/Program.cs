using Elaimet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Ika
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int loopit = 10;

            Random ika = new Random();
            // Luodaan loopissa oliot koira ja kissa arvotuin ikävuosin
            for(int i = 0; i < loopit; i++)
            {
                Koira rekku = new Koira("Tassu", ika.Next(1, 15)); // Next()-metodilla lukuväli arvottavaksi
                Console.WriteLine(rekku + " vuotta.");
                Kissa katti = new Kissa("Mauku", ika.Next(1, 10));
                Console.WriteLine(katti + " vuotta.");
            }
            Console.Read();
        }
    }
}
