using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Windows.Forms;
using Tietovisa.Model;

namespace Tietovisa
{
    public partial class Tietovisa : Form
    {
        private List<Question> questions;
        private readonly Random random = new Random();
        private Answer correctAnswer;

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
            DatabaseControl dbControl = new DatabaseControl();

            // Reset button colors to their default before showing a new question
            buttonAnswer1.BackColor = SystemColors.Control;
            buttonAnswer2.BackColor = SystemColors.Control;
            buttonAnswer3.BackColor = SystemColors.Control;
            buttonAnswer4.BackColor = SystemColors.Control;

            if (questions == null)
            {
                //DatabaseControl dbControl = new DatabaseControl();
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

            // arpoo kysymyksen ja näyttää kysymyksen tekstikentässä
            Question drawnQuestion = DrawRandomQuestion();            
            labelQuestion.Text = drawnQuestion.QuestionText;

            // estää saman kysymyksen arvonnan toistamiseen
            questions.Remove(drawnQuestion);

            // hakee vastaukset arvotulle kysymykselle
            //DatabaseControl dbControl = new DatabaseControl();
            List<Answer> answers = dbControl.GetAnswersByQuestionId(drawnQuestion.Id);

            if (answers.Count < 4) // tarkistuksena turha nykyisellä db:lla ? mutta OK
            {
                MessageBox.Show("Not enough answers for this question!", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }

            // sekoittaa vastausjärjestyksen napeille (mikäli pelaaja oppisi uudelleen pelatessa millä napilla on kunkin Q:n oikea vastaus)
            answers = answers.OrderBy(a => Guid.NewGuid()).ToList();

            // asettaa vastaukset napeille
            buttonAnswer1.Text = answers[0].AnswerText;
            buttonAnswer2.Text = answers[1].AnswerText;
            buttonAnswer3.Text = answers[2].AnswerText;
            buttonAnswer4.Text = answers[3].AnswerText;

            // Find the correct answer
            correctAnswer = answers.FirstOrDefault(a => a.IsCorrect);

            // Attach event handlers for answer buttons
            buttonAnswer1.Click += buttonAnswer_Click;
            buttonAnswer2.Click += buttonAnswer_Click;
            buttonAnswer3.Click += buttonAnswer_Click;
            buttonAnswer4.Click += buttonAnswer_Click;
        }

        private Question DrawRandomQuestion()
        {
            int index = random.Next(questions.Count);
            return questions[index];
        }

        private void buttonAnswer_Click(object sender, EventArgs e)
        {
            Button clickedButton = sender as Button;

            // Check if the clicked answer is correct
            if (clickedButton.Text == correctAnswer.AnswerText)
            {
                clickedButton.BackColor = Color.Green; // Correct answer
            }
            else
            {
                clickedButton.BackColor = Color.Red;   // Wrong answer
            }
        }
    }
}
