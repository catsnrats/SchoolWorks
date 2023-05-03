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
            /*Maksukortti kortti = new Maksukortti(7);
            Console.WriteLine(kortti);
            kortti.SyoMaukkaasti();
            Console.WriteLine(kortti);
            kortti.SyoEdullisesti();
            Console.WriteLine(kortti);*/

            // Alla tehtävän Matti ja Pekka osuus. LataaRahaa()-metodissa ollut oletusviesti korvattu
            Maksukortti pekanKortti = new Maksukortti(5);
            Maksukortti matinKortti = new Maksukortti(5);
            pekanKortti.SyoMaukkaasti();
            Console.WriteLine($"Pekan saldo: {pekanKortti}");
            matinKortti.SyoEdullisesti();
            Console.WriteLine($"Matin saldo: {matinKortti}");
            pekanKortti.LataaRahaa("Ladataanko Pekalle rahaa? (Y/N) ");
            Console.WriteLine($"Pekan saldo: {pekanKortti}");
            matinKortti.SyoMaukkaasti();
            Console.WriteLine($"Matin saldo: {matinKortti}");
            pekanKortti.SyoEdullisesti();
            pekanKortti.SyoEdullisesti();
            Console.WriteLine($"Pekan saldo: {pekanKortti}");
            matinKortti.LataaRahaa("Ladataanko Matille rahaa? (Y/N)");
            Console.WriteLine($"Matin saldo: {matinKortti}");

            // Kutsuu LataaRahaa()-metodia
            // Console.WriteLine($"Kortin saldo: {pekanKortti.LataaRahaa()}");

            Console.ReadLine();
        }
    }
}
