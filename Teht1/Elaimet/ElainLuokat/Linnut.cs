using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    public class Linnut
    {
        public string[] puhuvat = { "African Grey", "Indian Ringneck", "Quaker Parrot", "Budgies" }; // Taulukko puhuvista...
        public string lintu;
        public Linnut(string lintu) 
        {
            this.lintu = lintu;
        }
        public void AsetaLinnunNimi(string lintu)
        {
            this.lintu = lintu;
        }
    }
}
