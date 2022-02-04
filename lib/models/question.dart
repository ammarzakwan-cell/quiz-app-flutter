class Trivia {
  final String question;
  final String correct_answer;
  final List<String> incorrect_answers;
  final List<String> answers;

  Trivia({
    required this.question,
    required this.correct_answer,
    required this.incorrect_answers,
    required this.answers,
  });

  factory Trivia.fromJson(Map<String, dynamic> json) => Trivia(
        question: json["question"],
        correct_answer: json["correct_answer"],
        incorrect_answers:
            List<String>.from(json["incorrect_answers"].map((x) => x)),
        answers: List<String>.from(json['incorrect_answers'])
        ..add(json['correct_answer'])
        ..shuffle(),
      );
}
