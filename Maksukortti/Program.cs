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
            Maksukortti kortti = new Maksukortti(50);

           
            Console.WriteLine($"Kortin saldo: {kortti.LataaRahaa()}");

            Console.ReadLine();
        }
    }
}
