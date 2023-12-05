import 'dart:convert';

import 'package:flutter/foundation.dart';

class QuestionModel {
  String question;
  List<String> options;
  String correctAnswer;
  QuestionModel({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  QuestionModel copyWith({
    String? question,
    List<String>? options,
    String? correctAnswer,
  }) {
    return QuestionModel(
      question: question ?? this.question,
      options: options ?? this.options,
      correctAnswer: correctAnswer ?? this.correctAnswer,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'question': question,
      'options': options,
      'correctAnswer': correctAnswer,
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map) {
    return QuestionModel(
      question: map['question'] as String,
      options: List<String>.from((map['options'] as List<String>)),
      correctAnswer: map['correctAnswer'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuestionModel.fromJson(String source) =>
      QuestionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'QuestionModel(question: $question, options: $options, correctAnswer: $correctAnswer)';

  @override
  bool operator ==(covariant QuestionModel other) {
    if (identical(this, other)) return true;

    return other.question == question &&
        listEquals(other.options, options) &&
        other.correctAnswer == correctAnswer;
  }

  @override
  int get hashCode =>
      question.hashCode ^ options.hashCode ^ correctAnswer.hashCode;
}
