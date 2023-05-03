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
            string cat_name; // Muuttujat cat_name ja cat_age käyttäjän syötettä varten
            int cat_age;

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

            // Luodaan koira-luokasta olio. Nimetään koira, asetetaan ika ja tulostetaan nimi.
            Console.WriteLine("Tehtävä: koira-luokka ja -oliot:");
            Koira feralCat = new Koira();
           // Console.WriteLine("koira: " + feralCat.nimi + ", " + feralCat.Ika + "-vuotta.");

            // Asetetaan feralCat-oliolle uusi nimi metodin avulla. Ja palautetaan aiemmin annettu ikä metodin avulla.
            feralCat.AsetakoiranNimi("Viipottaja");
            Console.WriteLine("koira: " + feralCat.PalautakoiranNimi() + ", " + feralCat.PalautakoiranIka() + "-vuotta.");

            // Uusi koira-luokasta johdettu olio käyttäen parametrillista konstruktoria
            Koira katti = new Koira();
            // Tulostetaan katti-olion nimi ja ika
            //Console.WriteLine("koira: " + katti.nimi + ", " + katti.Ika + "-vuotta. \n");
            Console.WriteLine(katti);
            
            // Kokeilee AsetakoiranIka-metodia uuden koira-luokan olion kera
            Console.WriteLine("Tehtävä: koira-luokan arvon palauttaminen:"); // Seloste tehtävän selkeyttämiseksi
            // Luodaan uusi olio parametreineen ja tulostetaan se
            Koira ciaCat = new Koira("Fox", 7);
           // Console.WriteLine("koira: " + ciaCat.nimi + ", " + ciaCat.Ika + "-vuotta. \n");

            // Asetetaan Fox-koiralle uusi ikä (if-ehdon testaus)
            Console.WriteLine("(Nimi ei voi olla Musti, eikä ikä negatiivinen.)");
            Console.WriteLine("Anna koiralle ikä:");
            cat_age = Convert.ToInt32(Console.ReadLine()); // Kysytään käyttäjältä ikä koiralle
            ciaCat.AsetakoiranIka(cat_age);
          //  Console.WriteLine("koira: " + ciaCat.nimi + ", " + ciaCat.Ika + "-vuotta.");

            // Kysytään koiran nimi cat_name-muuttujaan
            Console.WriteLine("Anna koiralle uusi nimi: ");
            cat_name = Console.ReadLine(); 
            ciaCat.AsetakoiranNimi(cat_name);
          //  Console.WriteLine("koiran nimi on: " + ciaCat.nimi);

            Console.WriteLine("\nToString()-metodilla olion tiedot:");
            Console.WriteLine(ciaCat); // Käyttää metodia ToString() katti-olion tietojen tulostamiseen

            // Koira-tehtävän osuus
            Console.WriteLine("\nUusi koira-olio.");
            Koira samojedi = new Koira("MustI", 9);
            //samojedi.AsetakoiranNimi("Musti");
            Console.WriteLine(samojedi);
            

            Console.Read();
        }
    }
}
