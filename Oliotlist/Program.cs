using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Oliotlist
{
    internal class Program
    {
        private static int _oliomaara;
        static void Main(string[] args)
        {
            Console.WriteLine("Kuinka monta eläintä luodaan?");
            _oliomaara = Convert.ToInt16(Console.ReadLine());

            for (int i = 0; i < _oliomaara; i++)   
            {
                if (i % 3 == 0) // Loopissa käytetty jakojäännöstä joka kolmannen olion luontiin
                {
                    Kissa kolli = new Kissa();
                    kolli.AsetaElaimenNimi("Keeko");
                    kolli.AsetaElaimenIka(4);
                    Console.WriteLine($"Kissa {kolli.PalautaElaimenNimi()} on {kolli.PalautaElaimenIka()}-vuotias {i} \n"); // {i} = koodarin apumuuttujana

                    Koira musti = new Koira("", 0, "");
                    musti.AsetaElaimenNimi("Kesä");
                    musti.AsetaElaimenIka(9);
                    Console.WriteLine($"Koira {musti.PalautaElaimenNimi()} on {musti.PalautaElaimenIka()}-vuotias {i} \n");

                    Papukaija munkki = new Papukaija("", 0);
                    munkki.AsetaElaimenNimi("Hillo");
                    munkki.AsetaElaimenIka(9);
                    Console.WriteLine($"Papukaija {munkki.PalautaElaimenNimi()} on {munkki.PalautaElaimenIka()}-vuotias {i} \n");
                }
                else
                {
                    Hevonen heppa = new Hevonen();
                    heppa.AsetaElaimenNimi("Suomi");
                    heppa.AsetaElaimenIka(9);
                    Console.WriteLine($"Hevonen {heppa.PalautaElaimenNimi()} on {heppa.PalautaElaimenIka()}-vuotias {i} \n");

                }
            }

            Console.Read();
        }
    }
}
