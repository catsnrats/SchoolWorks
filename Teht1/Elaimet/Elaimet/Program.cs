﻿using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Cryptography.X509Certificates;
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
namespace ElainLuokat
{
    public class Program
    {
        static void Main(string[] args)
        {
            // Jatkettu periytymistehtävään: Olioilla käytetty Elain-luokan metodeja
            // AsetaOnLihanSyoja metodille voi asettaa bool arvon true tai false
            Kissa kolli = new Kissa();

            kolli.AsetaOnLihanSyoja(false); // Kutsuu boolean metodia asettaen arvon false
            kolli.AsetaElaimenNimi("Kaapo");
            kolli.AsetaElaimenIka(3);

            Console.WriteLine($"Kissan nimi on {kolli.PalautaElaimenNimi()}");
            Console.WriteLine($"Kissan ikä on {kolli.PalautaElaimenIka()}-v.");
            Console.WriteLine(kolli.PalautaOnLihanSyoja());
            
            kolli.Kehraa();
            kolli.Aantele();
            Console.WriteLine();

            // Koira luokasta johdettu olio...
            Koira hurtta = new Koira("", 0, "");
            hurtta.AsetaOnLihanSyoja(true);
            hurtta.AsetaElaimenNimi("Hurtta");
            hurtta.AsetaElaimenIka(6);           

            Console.WriteLine($"Koiran nimi on {hurtta.PalautaElaimenNimi()}");
            Console.WriteLine($"Koiran ikä on {hurtta.PalautaElaimenIka()}-v.");
            Console.WriteLine(hurtta.PalautaOnLihanSyoja());
            hurtta.Aantele();

            Console.WriteLine();
           
            Koira samo = new Koira("Tassu", 6, ""); // Asetettu olion parametrit ilman metodeja
            Console.WriteLine($"Koiran ikä ja nimi: {samo.ika}-vuotias {samo.nimi}");
            samo.AsetaOnLihanSyoja(true);
            Console.WriteLine(hurtta.PalautaOnLihanSyoja());

            Console.WriteLine();

            // Alla tehtävän (4 luokkakaavio) oliot lintu ja susi
            Papukaija lintu = new Papukaija("", 0);
            lintu.AsetaLinnunNimijaIka("Monk", 8);
            Console.WriteLine(lintu.PalautaOsaaPuhua());
            lintu.AsetaLinnunNimijaIka("Harakka", 10);
            Console.WriteLine(lintu.PalautaOsaaPuhua());

            Console.WriteLine();

            Koira susi = new Koira("", 0, "");
            susi.AsetaOnLihanSyoja(true);
            susi.AsetaElaimenNimi("Valo");
            susi.AsetaElaimenIka(9);
            Console.WriteLine($"Suden nimi on {susi.PalautaElaimenNimi()}");
            Console.WriteLine($"Suden ikä on {susi.PalautaElaimenIka()}-v.");
            Console.WriteLine(susi.PalautaOnLihanSyoja());
            Console.WriteLine($"Susi on {susi.AsetaSudeksi("")}");
          
            Console.Read();
        }
    }
}
