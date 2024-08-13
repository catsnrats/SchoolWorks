using System;
using System.Drawing;
using System.Windows.Forms;
using Tietovisa.Model;

namespace Tietovisa
{
    public partial class Tietovisa : Form
    {
        public Tietovisa()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void suljeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void testaaTietokantayhteysToolStripMenuItem_Click(object sender, EventArgs e) // DB-testi
        {
            DatabaseControl dbControl = new DatabaseControl(); // DatabaseControl instanssi

            bool connectionSuccessful = dbControl.ConnectDatabase();

            if (connectionSuccessful) 
            {
                MessageBox.Show("Database connection successful!", "Connection Test", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            else
            {
                MessageBox.Show("Failed to connect to the database.", "Connection Test", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        // painike pelin aloitukseen ja pelin aikaiseen uuden kysymyksen arvontaan
        private void buttonNewQuestion_Click(object sender, EventArgs e)
        {

        }
    }
}
