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
            /* Maksukortti-luokasta johdettu kortti olio ja luokasta kutsutut funktiot
            Maksukortti kortti = new Maksukortti(7);
            Console.WriteLine(kortti);
            kortti.SyoMaukkaasti();
            Console.WriteLine(kortti);
            kortti.SyoEdullisesti();
            Console.WriteLine(kortti); */
            Maksukortti pekanKortti = new Maksukortti(20);
            Maksukortti matinKortti = new Maksukortti(30);
            pekanKortti.SyoMaukkaasti();
            matinKortti.SyoEdullisesti();
            pekanKortti.LataaRahaa();
            Console.WriteLine($"Pekan saldo: {pekanKortti}");
                
            // Kutsuu LataaRahaa()-metodia
            //Console.WriteLine($"Kortin saldo: {kortti.LataaRahaa()}");

            Console.ReadLine();
        }
    }
}
