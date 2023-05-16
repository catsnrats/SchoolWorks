using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Elaimet
{   //Esitellään luokka eli class. Koodi olisi voinut olla Program.cs tiedostossa mutta selkeyden takia luomme jokaisen luokan
    //omaan tiedostoonsa
    public class Hevonen : Nisakkaat
    {
       
        public Hevonen()
        {        }
        //getterillä ja setterillä annetaan luokan ulkopuolisille sovelluksille mahdollisuus 
        //settaa tai hakea kenttiä
        public string Nimi
        {
            get
            {
                return nimi;
            }

            set
            {
                nimi = value;
            }
        }

        public int Paino
        {
            get
            {
                return paino;
            }

            set
            {
                paino = value;
            }
        }
    }
}
