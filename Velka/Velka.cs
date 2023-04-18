using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Velka
{
    internal class Velka
    {
        // Desimaalimuuttujat luokkaan
        public double saldo;
        public double korkoProsentti;

        public Velka(double saldo, double korkoProsentti) // Parametrillinen konstruktori
        {
            this.saldo = saldo; // Käytetty this.-muotoa koska muuttujien nimet pysyvät samoina
            this.korkoProsentti = korkoProsentti;
        }

        public void TulostaSaldo()
        {
            saldo = 0;
        }
        public void OdotaVuosi()
        { }
    }
}
