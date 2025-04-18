class QuizQuestion {
  const QuizQuestion(this.question, this.answers);
  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    // Keeping original list intact because first answer is always correct -
    // this will be used to summarize the quiz.
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
