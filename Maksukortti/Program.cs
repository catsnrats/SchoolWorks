using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Maksukortti
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Maksukortti-luokasta johdettu kortti olio ja luokasta kutsutut funktiot
            Maksukortti kortti = new Maksukortti(7);
            Console.WriteLine(kortti);
            kortti.SyoMaukkaasti();
            Console.WriteLine(kortti);
            kortti.SyoEdullisesti();
            Console.WriteLine(kortti);
            
            //Console.WriteLine($"Kortin saldo: {kortti.LataaRahaa()}");

            Console.ReadLine();
        }
    }
}
