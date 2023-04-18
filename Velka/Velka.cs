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
        public double saldo, korkoProsentti;
        
        public Velka(double saldo, double korkoProsentti) // Parametrillinen konstruktori
        {
            this.saldo = saldo; // Käytetty this.-muotoa koska muuttujien nimet pysyvät samoina
            this.korkoProsentti = korkoProsentti;
        }

        public void TulostaSaldo() // Funktio saldo-muuttujan tulostamiseen
        {
            Console.WriteLine("Lainaa " + saldo + " eur.");
        }
        public void OdotaVuosi() // Funktio saldo-muuttujan kasvattamiseen
        {
            saldo += 100 * (1 + korkoProsentti); // Yhtälö jolla kasvatetaan saldo-muuttujaa
        }
    }
}
