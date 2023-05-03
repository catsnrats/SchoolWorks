using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mitta
{
    internal class Program
    {
        static void Main(string[] args)
        {

=======
            Mittari mittari = new Mittari(); // Luodaan olio nimeltä mittari

            // While not true (käydään kunnes Taynna()-metodi palauttaa arvon true)
            while (!mittari.Taynna()) 
            {
                Console.WriteLine($"Ei täynnä! Mitta: {mittari.Mitta()}");
                mittari.Lisaa();
            }

            // Kutsutaan Vahenna()- ja Mitta()-metodeja
            Console.WriteLine($"Täynnä! {mittari.Mitta()}");
            mittari.Vahenna();
            Console.WriteLine($"Ei täynnä! {mittari.Mitta()}");
            Console.Read();
        }
>>>>>>> 661424b66ff5a340e5332d0b211a090e7bd5ceb2
    }
}
