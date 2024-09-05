using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Tietovisa.Model
{
    internal class DatabaseControl
    {
        string connString;
        SqlConnection dbConn;

        public DatabaseControl()
        {
            connString = "Data source=(localdb)\\MSSQLLocalDB; Initial catalog=Tietovisa; Integrated Security=True;";
            dbConn = new SqlConnection(connString);
        }

        public bool ConnectDatabase()
        {
            try
            {
                dbConn.Open();
                return true;
            }
            catch (Exception e)
            {
                MessageBox.Show(e.Message, "DB connection error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return false;
            }
            finally
            {
                dbConn.Close();
            }
        }

        // Hakee kysymykset listaan -> listalta arvotaan kysymys napilla 'buttonNewQuestion_Click' (Tietovisa.cs)
        public List<Question> GetAllQuestions() 
        {
            List<Question> questions = new List<Question>();

            using (SqlConnection connection = new SqlConnection(connString))
            {
                string query = "SELECT id, question_text, category FROM questions";
                SqlCommand command = new SqlCommand(query, connection);

                try 
                {
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        Question question = new Question
                        {
                            Id = reader.GetInt32(0),
                            QuestionText = reader.GetString(1),
                            Category = reader.GetString(2)
                        };

                        questions.Add(question);
                    }

                    reader.Close();
                }
                catch (Exception e) 
                {
                    MessageBox.Show(e.Message, "Database Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }

            return questions;
        }
    }
}
