using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tuote
{
    internal class Program
    {
        static void Main(string[] args)
        {
            // Tuote luokasta johtettu olio banaani arvoineen
            Tuote banaani = new Tuote("Banaani", 1.1, 13); 
            // Kutsuu TulostaTuote()-metodia banaani-olion tietojen tulostamiseen
            banaani.TulostaTuote();

            Console.Read();
        }
    }
}
