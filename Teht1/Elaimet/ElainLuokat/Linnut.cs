using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    public abstract class Linnut : Elain
    {
        public Linnut(string lintu, int ika)
        {
            this.lintu = lintu;
            this.ika = ika;
        }
        public void AsetaLinnunNimijaIka(string lintu, int ika)
        {
            this.lintu = lintu;
            this.ika = ika;
        }
        public string PalautaOsaaPuhua() // Metodissa verrataan linnulle annettua nimeä puhuvat-taulukkoon
        {
            if (puhuvat.Contains(lintu))
            {
                return $"{ika}-vuotias {lintu} osaa matkia puhetta.";
            }
            else
            {
                return $"{ika}-vuotias {lintu} ei osaa matkia puhetta.";
            }
        }
    }
}
