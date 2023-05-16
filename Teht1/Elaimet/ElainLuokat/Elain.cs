using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Text;
using System.Threading.Tasks;

namespace ElainLuokat
{
    public abstract class Elain
    {
        // Elain-luokka luotu pääluokaksi
        public int ika = 0;
        public int paino;
        public string nimi;
        public string lintu;
        public string nisakas;
        public bool onLihanSyoja;
        public string[] puhuvat = { "African grey", "Indian ringneck", "Quaker parrot", "Budgerigar", "Monk", "Amazon parrot" }; // Taulukko matkivista...
        // Taulukko arvontaa varten
        public string[] sudet = { "Himalayan wolf", "Arctic wolf", "Eurasian wolf", "Mongolian wolf", "Red wolf", "Tudra wolf", "Russian wolf", "Mexican wolf" };
        Random susi = new Random();
        public Elain()
        { }
        public Elain(string nimi, int ika, string nisakas)
        {
            this.ika = ika;
            this.nimi= nimi;
            this.nisakas = nisakas;
        }
        // Alla luokan metodit (ikä ei voi olla negatiivinen)
        public void AsetaElaimenNimi(string elainNimi)
        {
            nimi = elainNimi;
        }
        public void AsetaElaimenIka(int elainIka)
        {
            if (elainIka < 0)
            {
                Console.WriteLine("Ikä ei voi olla negatiivinen.");
            }
            else
            {
                ika = elainIka;
            }
        }
        public void AsetaOnLihanSyoja(bool vastaus)
        {
            onLihanSyoja = vastaus;
        }
        public string AsetaSudeksi(string nisakas) // Arpoo indeksin sudet[]-taulukosta ja palauttaa indeksin merkkijonon
        {
            int index = susi.Next(sudet.Length);
            return sudet[index];
        }
        public int PalautaElaimenIka() // Metodi olion ika-muuttujan palauttamiseen
        {
            return ika;
        }
        public string PalautaElaimenNimi() // Metodi olion nimi-merkkijonon palauttamiseen
        {
            return nimi;
        }
        public string PalautaOnLihanSyoja() // Palauttaa onLihanSyoja arvon tekstinä riippuen onLihanSyoja arvosta
        {
            if (onLihanSyoja)
            {
                return "On lihansyöjä.";
            }
            else 
            {
                return "Ei syö lihaa";
            }
        }
        public virtual void Aantele()
        {
            Console.WriteLine("Umph!");
        }
    }
}
