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
    class Program
    {
        static void Main(string[] args)
        {
            // Selvennystä eläinten välille...
            Console.WriteLine("Tehtävä: Hevos-olio:");
           
            //Tässä luot luokasta olion
            Hevonen cHevonen = new Hevonen();
            cHevonen.nimi = "Histamiini";
            cHevonen.paino = 89;
            //Tulosta olion nimi ja paino
            Console.WriteLine(cHevonen.nimi + " " + cHevonen.paino + " kg");
            //Muuta olion nimeä ja painoa
            cHevonen.nimi = "Vitamiini";
            cHevonen.paino = 450;
            //Tulosta nyt olion nimi ja paino, jotta varmistat että muutos tapahtui
            Console.WriteLine(cHevonen.nimi + " " + cHevonen.paino + " kg \n");

            // Luodaan kissa-luokasta olio. Nimetään kissa, asetetaan ika ja tulostetaan nimi.
            Console.WriteLine("Tehtävä: Kissa-luokka ja -oliot:");
            Kissa feralCat = new Kissa();
            Console.WriteLine("Kissa: " + feralCat.nimi + ", " + feralCat.Ika + "-vuotta.");

            // Asetetaan feralCat-oliolle uusi nimi metodin avulla. Ja palautetaan aiemmin annettu ikä metodin avulla.
            feralCat.AsetaKissanNimi("Viipottaja");
            Console.WriteLine("Kissa: " + feralCat.PalautaKissanNimi() + ", " + feralCat.PalautaKissanIka() + "-vuotta.");

            // Uusi Kissa-luokasta johdettu olio käyttäen parametrillista konstruktoria
            Kissa katti = new Kissa("Karvinen", 2);
            // Tulostetaan katti-olion nimi ja ika
            Console.WriteLine("Kissa: " + katti.nimi + ", " + katti.Ika + "-vuotta. \n");
            
            // Kokeilee AsetaKissanIka-metodia uuden Kissa-luokan olion kera
            Console.WriteLine("Tehtävä: Kissa-luokan arvon palauttaminen:"); // Seloste tehtävän selkeyttämiseksi
            // Luodaan uusi olio parametreineen ja tulostetaan se
            Kissa ciaCat = new Kissa("Fox", 7);
            Console.WriteLine("Kissa: " + ciaCat.nimi + ", " + ciaCat.Ika + "-vuotta. \n");

            // Asetetaan Fox-kissalle uusi ikä (if-ehdon testaus)
            Console.WriteLine("Yrittää asettaa olion ciaCat iän miinukselle ja nimetä Hildaksi.");
            ciaCat.AsetaKissanIka(-1);
            Console.WriteLine(ciaCat.nimi + ", " + ciaCat.Ika + "-vuotta.");
            // Yrittää asettaa kissalle kielletyn nimen
            ciaCat.AsetaKissanNimi("hIlDa");
            Console.WriteLine("Kissan nimi on edelleen: " + ciaCat.nimi);

            Console.Read();
        }
    }
}
