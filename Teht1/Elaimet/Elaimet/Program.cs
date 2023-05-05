using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Text;
using System.Threading.Tasks;

/**
  
   Muista kommentoida toiminnalliset funktiot!

   https://msdn.microsoft.com/en-us/library/5ast78ax.aspx

    1. Luokassa Hevonen ei ole kuin yhden tyyppinen konstruktori,  parametriton konstruktori. Tutki luokkaa.
    2. Luo Hevonen -luokasta olio Main -metodissa
	3. Lisää rivi missä Tulostat olion nimi ja paino näytölle.
	4. Lisää koodiin rivit missä annetaan luodulle oliolle nimi ja paino.
    5. Tulosta olion tiedot nyt näytölle.
  
   
**/
namespace Elaimet
{
    public class Program
    {
        static void Main(string[] args)
        {
            // Jatkettu periytymistehtävään: Kissa luokasta johdetulla kolli-oliolla käytetty Elain-luokan metodeja
            Kissa kolli = new Kissa();

            kolli.AsetaOnLihanSyoja(false);
            kolli.AsetaElaimenNimi("Kaapo");
            kolli.AsetaElaimenIka(3);

            Console.WriteLine($"Kissan nimi on {kolli.PalautaElaimenNimi()}");
            Console.WriteLine($"Kissan ikä on {kolli.PalautaElaimenIka()}-v.");
            Console.WriteLine(kolli.PalautaOnLihanSyoja());
            
            kolli.Kehraa();
           
            Console.Read();
        }
    }
}
