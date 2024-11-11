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
        
        private Answer buttonAnswer1Answer;
        private Answer buttonAnswer2Answer;
        private Answer buttonAnswer3Answer;
        private Answer buttonAnswer4Answer;

        private int timeLeft;
        private int score;

        public Tietovisa()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            timer1.Stop();            
        }

        private void SuljeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void TestaaTietokantayhteysToolStripMenuItem_Click(object sender, EventArgs e) // for database connection testing
        {
            DatabaseControl dbControl = new DatabaseControl(); // DatabaseControl instance

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
        
        private void ButtonNewQuestion_Click(object sender, EventArgs e)
        {
            DatabaseControl dbControl = new DatabaseControl();

            labelInfo.Text = null;

            // for timer
            timeLeft = 10;
            labelTimer.Text = timeLeft.ToString(); // display the init. time            
            timer1.Start();

            // Reset button colors to their default before showing a new question
            buttonAnswer1.BackColor = SystemColors.Control;
            buttonAnswer2.BackColor = SystemColors.Control;
            buttonAnswer3.BackColor = SystemColors.Control;
            buttonAnswer4.BackColor = SystemColors.Control;

            if (questions == null)
            {
                List<Question> allQuestions = dbControl.GetAllQuestions();                

                if (allQuestions == null || allQuestions.Count < 10)
                {
                    MessageBox.Show("No questions available", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                // draws 10 questions from Q-pool
                questions = allQuestions.OrderBy(q => random.Next()).Take(10).ToList();
            }

            labelQleft.Text = $"Questions left: {questions.Count}";

            // checks if any Qs left
            if (questions.Count == 0)
            {
                timer1.Stop();
                MessageBox.Show($"All questions have been asked!\nYour total score is: {score}", "Game Over", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // Ask if the player wants to start a new game
                var result = MessageBox.Show("Would you like to start a new game?", "New Game", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (result == DialogResult.Yes)
                {
                    // Reset game: reload questions and reset score                   
                    List<Question> allQuestions = new DatabaseControl().GetAllQuestions();

                    // Check if there are enough questions for a new game
                    if (allQuestions == null || allQuestions.Count < 11)
                    {
                        MessageBox.Show("Not enough questions available to start a new game.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        return;
                    }

                    // Draw a new set of 20 questions
                    questions = allQuestions.OrderBy(q => random.Next()).Take(11).ToList();
                    score = 0; // Reset the score for the new game
                    labelQleft.Text = $"Questions left: {questions.Count}";

                    // Start the new game by drawing the first question
                    ButtonNewQuestion_Click(null, null);                   

                }
                else
                {
                    Application.Exit();
                    return; // Exit if the player doesn’t want a new game
                }
            }

            // draws a question and shows it text label
            Question drawnQuestion = DrawRandomQuestion();
            labelQuestion.Text = drawnQuestion.QuestionText;

            // prevents drawing same Q twice
            questions.Remove(drawnQuestion);
            labelQleft.Text = $"Questions left: {questions.Count}"; // update Q count

            // fetch answer choises for drawn question            
            List<Answer> answers = dbControl.GetAnswersByQuestionId(drawnQuestion.Id);

            // mixes answer order in buttons
            answers = answers.OrderBy(a => Guid.NewGuid()).ToList();

            // set answers in buttons...
            buttonAnswer1.Text = answers[0].AnswerText;
            buttonAnswer1Answer = answers[0];
            buttonAnswer2.Text = answers[1].AnswerText;
            buttonAnswer2Answer = answers[1];
            buttonAnswer3.Text = answers[2].AnswerText;
            buttonAnswer3Answer = answers[2];
            buttonAnswer4.Text = answers[3].AnswerText;
            buttonAnswer4Answer = answers[3];

            // Find the correct answer
            correctAnswer = answers.FirstOrDefault(a => a.IsCorrect);

            // Remove existing handlers to avoind duplication
            buttonAnswer1.Click -= buttonAnswer_Click;
            buttonAnswer2.Click -= buttonAnswer_Click;
            buttonAnswer3.Click -= buttonAnswer_Click;
            buttonAnswer4.Click -= buttonAnswer_Click;

            // Attach event handlers for answer buttons
            buttonAnswer1.Click += buttonAnswer_Click;
            buttonAnswer2.Click += buttonAnswer_Click;
            buttonAnswer3.Click += buttonAnswer_Click;
            buttonAnswer4.Click += buttonAnswer_Click;

            // Enable buttons (time's up disables)
            buttonAnswer1.Enabled = true;
            buttonAnswer2.Enabled = true;
            buttonAnswer3.Enabled = true;
            buttonAnswer4.Enabled = true;
        }      

        private Question DrawRandomQuestion() // method draws questions
        {
            int index = random.Next(questions.Count);
            return questions[index];
        }

        private void buttonAnswer_Click(object sender, EventArgs e) // handles players answers
        {
            Button clickedButton = sender as Button;
            Answer selectedAnswer = null;

            timer1.Stop();

            // determine which button was clicked and get the associated answer
            if (clickedButton == buttonAnswer1)
                selectedAnswer = buttonAnswer1Answer;
            else if (clickedButton == buttonAnswer2)
                selectedAnswer = buttonAnswer2Answer;
            else if (clickedButton == buttonAnswer3)
                selectedAnswer = buttonAnswer3Answer;
            else if (clickedButton == buttonAnswer4)
                selectedAnswer = buttonAnswer4Answer;

            // Check if the clicked answer is correct
            if (clickedButton.Text == correctAnswer.AnswerText)
            {
                clickedButton.BackColor = Color.Green; // Correct answer
                score += 20;
            }
            else
            {
                clickedButton.BackColor = Color.Red;   // Wrong answer
            }

            // show additional info about the topic / question / selected answer
            labelInfo.Text = selectedAnswer.TopicInfo;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if (timeLeft > 0)
            {
                // decrease time left / updt. the label
                timeLeft--;
                labelTimer.Text = timeLeft.ToString();
            }
            else
            {
                // time's up
                timer1.Stop();
                MessageBox.Show("Time's up! Draw next question.", "Time's Up", MessageBoxButtons.OK, MessageBoxIcon.Information);

                // prevents answering after time's up
                buttonAnswer1.Enabled = false;
                buttonAnswer2.Enabled = false;
                buttonAnswer3.Enabled = false;
                buttonAnswer4.Enabled = false;
            }
        }
    }
}
