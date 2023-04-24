using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Maksukortti
{
    internal class Maksukortti
    {
        private double _saldo;

        public Maksukortti(double saldo)
        {
            _saldo = saldo;
        }
        public double LataaRahaa() 
        {
            Console.WriteLine("Kortille ladattava summa: ");
            _saldo += int.Parse(Console.ReadLine());
            return _saldo;
        }

        /*public override string ToString()
        {
            return base.ToString();
        }*/
    }
}
