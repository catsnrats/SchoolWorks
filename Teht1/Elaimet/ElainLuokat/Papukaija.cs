using ElainLuokat;
using System;
using System.Collections.Generic;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{
    public class Papukaija
    {
        public bool osaaPuhua;
        public string[] puhuvat = { "African Grey", "Indian Ringneck", "Quaker Parrot", "Budgies" };
        public string lintu;
        public Papukaija()
        {
            
        }
        public void AsetaLinnunNimi(string lintu)
        {
            this.lintu = lintu;
        }

        public string PalautaOsaaPuhua()
        {
            if (puhuvat.Contains(lintu))
            {
                return $"{lintu} osaa puhua.";
            }
            else
            {
                return $"{lintu} ei osaa puhua.";
            }
        }
    }
}
