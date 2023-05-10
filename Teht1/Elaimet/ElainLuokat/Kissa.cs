using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Kissa : Nisakkaat // Kissa-luokka perii Nisakkaat-luokan metodit
    {
        public void Kehraa()
        {
            Console.WriteLine("Hrrrrr hrrr");
        }
        public override void Aantele()
        {
            Console.WriteLine("Miau!");
        }
    } 
}
