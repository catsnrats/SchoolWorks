using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Maksukortti
{
    internal class Maksukortti
    {
        private double _saldo, _eurMaara; // Private-muuttuja _saldo ja _eurMaara
        private string _vastaus; // Muuttuja käyttäjän syötteen vastaanottamiseen
        
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
        public double LataaRahaa(string msg) // Kysyy käyttäjältä _saldo-muuttujaan lisättävän summan
        {
            Console.WriteLine(msg); // msg-muuttujalle on räätälöity viesti LataaRahaa()-kutsussa
            _vastaus = Console.ReadLine();

            /* Kun käyttäjän vastaus on "Y" tai "y", kysytään latauskysymys uudestaan ja lisätään
            vastaus _saldo-muuttujaan. Muutoin tulostaa _saldo:n arvon. Käytetty poikkeuksenkäsittelyä
            _eurMaara-muuttujan syötteen suhteen. */
            try
            {
                while (_vastaus == "Y" | _vastaus == "y")
                {
                    // Tarkistus nollaa alemman syötteen varalle. Vain positiivinen luku lisätään muuttujaan _saldo.
                    Console.WriteLine("Kortille ladattava summa: ");
                    _eurMaara = Convert.ToDouble(Console.ReadLine());
                    if (_eurMaara > 0)
                    {
                        _saldo += _eurMaara;
                    }
                    return LataaRahaa(msg);
                }
            }
            catch (Exception e) 
            {
                Console.WriteLine(e.Message);
            }
            return _saldo;
        }

        public override string ToString() // Palauttaa mm. _saldo-muuttujan muodossa merkkijono
        {
            return _saldo + " euroa.";
        }
    }
}
