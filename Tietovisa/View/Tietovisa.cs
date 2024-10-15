using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using Tietovisa.Model;

namespace Tietovisa
{
    public partial class Tietovisa : Form
    {
        private List<Question> questions;
        private readonly Random random = new Random();

        public Tietovisa()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void SuljeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void TestaaTietokantayhteysToolStripMenuItem_Click(object sender, EventArgs e) // DB-testi
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
        private void ButtonNewQuestion_Click(object sender, EventArgs e)
        {
            if (questions == null)
            {
                DatabaseControl dbControl = new DatabaseControl();
                questions = dbControl.GetAllQuestions();

                if (questions == null || !questions.Any())
                { 
                    MessageBox.Show("No questions available", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }
            }

            // tarkistaa onko kysymyksiä jäljellä...
            if (questions.Count == 0)
            {
                MessageBox.Show("All questions have been asked!", "Game Over", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            // arpoo kysymyksen
            Question drawnQuestion = DrawRandomQuestion();

            // näyttää kysymyksen tekstikentässä
            labelQuestion.Text = drawnQuestion.QuestionText;

            // estää saman kysymyksen arvonnan toistamiseen ?
            questions.Remove(drawnQuestion);
        }

        private Question DrawRandomQuestion()
        {
            int index = random.Next(questions.Count);
            return questions[index];
        }
    }
}
