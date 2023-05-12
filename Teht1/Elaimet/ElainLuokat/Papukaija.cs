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
    public class Papukaija : Linnut
    {
        public Papukaija(string lintu, int ika) : base(lintu, ika)
        {
        }
    }
}
