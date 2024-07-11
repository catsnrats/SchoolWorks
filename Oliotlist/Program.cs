using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;

namespace Oliotlist
{
    internal class Program
    {
        private static int _oliomaara;
        private static string[] elaimet = { "kissa", "koira", "papukaija", "hevonen" };
        static void Main(string[] args)
        {
            Console.WriteLine("Kuinka monta eläintä luodaan?");
            _oliomaara = Convert.ToInt16(Console.ReadLine());

            for (int i = 0; i < _oliomaara; i++)   
            {
                string elain;

                if (i % 4 == 3)
                {
                    elain = "hevonen"; // Asettaa hevosen joka neljänteen
                }
                else
                {
                    elain = elaimet[i % (elaimet.Length - 1)];
                }
                    
                switch (elain)
                {
                    case "kissa":
                        Kissa kolli = new Kissa();
                        kolli.AsetaElaimenNimi("Keeko");
                        kolli.AsetaElaimenIka(4);
                        Console.WriteLine($"Kissa {kolli.PalautaElaimenNimi()} on {kolli.PalautaElaimenIka()}-vuotias\n");
                        break;
                    case "koira":
                        Koira musti = new Koira("", 0, "");
                        musti.AsetaElaimenNimi("Kesä");
                        musti.AsetaElaimenIka(9);
                        Console.WriteLine($"Koira {musti.PalautaElaimenNimi()} on {musti.PalautaElaimenIka()}-vuotias\n");
                        break;
                    case "papukaija":
                        Papukaija munkki = new Papukaija("", 0);
                        munkki.AsetaElaimenNimi("Hillo");
                        munkki.AsetaElaimenIka(9);
                        Console.WriteLine($"Papukaija {munkki.PalautaElaimenNimi()} on {munkki.PalautaElaimenIka()}-vuotias\n");
                        break;
                    case "hevonen":
                        Hevonen heppa = new Hevonen();
                        heppa.AsetaElaimenNimi("Suomi");
                        heppa.AsetaElaimenIka(9);
                        Console.WriteLine($"Hevonen {heppa.PalautaElaimenNimi()} on {heppa.PalautaElaimenIka()}-vuotias\n");
                        break;
                }

            }

            Console.Read();
        }
    }
}
