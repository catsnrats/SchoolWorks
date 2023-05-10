using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Koira : Nisakkaat // Koira-luokka perii Elain-luokan
    {
        public override void Aantele()
        {
            Console.WriteLine("Hau!Hau!");
        }

        // Konstruktori perii parametrit Elain-luokasta
        /*public Koira(string elainNimi, int elainIka) : base(elainNimi, elainIka) 
        {
        }*/
    } 
}
