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
            for (int i = 0; i < loopit; i++)
            {
                Koira rekku = new Koira("Tassu", 0); // Next()-metodilla lukuväli arvottavaksi
                rekku.AsetakoiranIka(ika.Next(1, 15));
                Kissa katti = new Kissa("Mauku", 0);
                katti.AsetaKissanIka(ika.Next(1, 15));

                int koiranIka = rekku.PalautakoiranIka(); // Käytetään aiemmin luotuja metodeja
                int kissanIka = katti.PalautaKissanIka();

                Console.WriteLine(rekku + " vuotta.");
                Console.WriteLine(katti + " vuotta.");

                if (koiranIka > kissanIka) // Ehtolauseet ikien vertaamiseen
                {
                    Console.WriteLine("Koira on vanhempi.");
                }
                else if (koiranIka == kissanIka)
                {
                    Console.WriteLine("Koira ja kissa ovat samanikäiset.");
                }  
                else 
                {
                    Console.WriteLine("Kissa on vanhempi.");
                }
            }
            Console.Read();
        }
    }
}
