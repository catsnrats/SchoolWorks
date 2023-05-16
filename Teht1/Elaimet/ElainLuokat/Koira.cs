using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    public class Koira : Nisakkaat // Koira-luokka perii Nisakkaat-luokan
    {
        public override void Aantele()
        {
            Console.WriteLine("Hau!Hau!");
        }

        // Konstruktori perii parametrit Nisakkaat-luokasta
        public Koira(string nimi, int ika, string nisakas) : base(nimi, ika, nisakas) 
        {
        }
    } 
}
