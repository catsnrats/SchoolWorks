﻿using System;
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
            Console.WriteLine("\u001B[3mHevos-olio:\u001B[0m");
           
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

            Console.WriteLine("\u001B[3mKissa-olio:\u001B[0m");
            // Luodaan kissa-luokasta olio. Nimetään kissa ja tulostetaan nimi.
            Kissa feralCat = new Kissa();
            feralCat.nimi = "Jenkku";
            Console.WriteLine("Kissan nimi: " + feralCat.nimi);

            
            Console.Read();
        }
    }
}
