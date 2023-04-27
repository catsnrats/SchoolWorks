﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Maksukortti
{
    internal class Maksukortti
    {
        private double _saldo; // Private-muuttuja _saldo
        private string _vastaus;

        public Maksukortti(double saldo) // Konstruktori desimaalimuuttujalla
        {
            _saldo = saldo;
        }
        public void SyoEdullisesti() // Vähentää _saldo-muuttujasta 2.6 jos ehto toteutuu
        {
            if (_saldo >= 2.6)
            {
                _saldo -= 2.6;
            }
            else
            {
                Console.WriteLine("Ruokatilaus ei onnistu. Kortilla ei ole riittävästi rahaa.");
            }
        }
        public void SyoMaukkaasti() // Vähentää _saldo-muuttujasta 4.6, jos ehto toteutuu
        {
            if (_saldo >= 4.6)
            {
                _saldo -= 4.6;
            }
            else 
            {
                Console.WriteLine("Ruokatilaus ei onnistu. Kortilla ei ole riittävästi rahaa.");
            }
        }
        public double LataaRahaa() // Kysyy käyttäjältä _saldo-muuttujaan lisättävän summan
        {
            Console.WriteLine("Ladataanko kortille rahaa? (Y/N) ");
            _vastaus = Console.ReadLine();

            // Kun käyttäjän vastaus on "Y" tai "y", kysytään latauskysymys uudestaan ja lisätään
            // vastaus _saldo-muuttujaan. Muutoin tulostaa _saldo:n arvon
            while (_vastaus == "Y" | _vastaus == "y")
            {
                Console.WriteLine("Kortille ladattava summa: ");
                _saldo += Convert.ToInt32(Console.ReadLine());
                return LataaRahaa();
            }
            return _saldo;
        }

        public override string ToString() // Palauttaa mm. _saldo-muuttujan muodossa merkkijono
        {
            return "Kortilla on rahaa " + _saldo + " euroa.";
        }
    }
}
