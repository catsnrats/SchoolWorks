namespace Tietovisa.Model
{
    public class Question
    {
        public int Id { get; set; }
        public string QuestionText { get; set; }
        public string Category { get; set; }

        public Question() { } // constructors (default and with parameters)

        public Question(int id, string questionText, string category)
        {
            Id = id;
            QuestionText = questionText;
            Category = category;
        }
    }
}
