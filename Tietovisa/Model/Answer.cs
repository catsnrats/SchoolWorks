namespace Tietovisa.Model
{
    public class Answer
    {
        public int Id {  get; set; }

        public int QuestionId { get; set; }

        public string AnswerText { get; set; }

        public string TopicInfo { get; set; }

        public bool IsCorrect { get; set; }

        public Answer() { }

        public Answer(int id, int questionId, string answerText, string topicInfo, bool isCorrect)
        {
            Id = id;
            QuestionId = questionId;
            AnswerText = answerText;
            TopicInfo = topicInfo;
            IsCorrect = isCorrect;
        }        
    }
}
