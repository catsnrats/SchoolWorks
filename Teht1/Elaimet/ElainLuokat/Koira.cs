using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Koira : Elain // Koira-luokka perii Elain-luokan
    {
        public string haukku = "Hau!Hau!";

        // Konstruktori perii parametrit Elain-luokasta
        public Koira(string elainNimi, int elainIka) : base(elainNimi, elainIka) 
        {
        }
    } 
}
