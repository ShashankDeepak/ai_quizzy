// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

/*
Topic
Image
Duration
Hardness
Description
Date and time of quiz
Organization name
Organization contact email
Organization contact website
User joined list
User invited list
Question Model list
Category

*/

import 'package:ai_quizzy/model/question_model.dart';

class QuizModel {
  String topic;
  String imageUrl;
  int duration;
  String hardness;
  String description;
  DateTime quizDateTime;
  String organizationName;
  String organizationEmail;
  String organizationWebsite;
  List<String> joinedUsersUidList;
  List<String> usersInvitedUidList;
  List<QuestionModel> questions;
  List<String> category;
  QuizModel({
    required this.topic,
    this.imageUrl = "",
    required this.duration,
    required this.hardness,
    this.description = "",
    required this.quizDateTime,
    this.organizationName = "",
    this.organizationEmail = "",
    this.organizationWebsite = "",
    this.joinedUsersUidList = const [],
    this.usersInvitedUidList = const [],
    required this.questions,
    this.category = const [],
  });

  QuizModel copyWith({
    String? topic,
    String? imageUrl,
    int? duration,
    String? hardness,
    String? description,
    DateTime? quizDateTime,
    String? organizationName,
    String? organizationEmail,
    String? organizationWebsite,
    List<String>? joinedUsersUidList,
    List<String>? usersInvitedUidList,
    List<QuestionModel>? questions,
    List<String>? category,
  }) {
    return QuizModel(
      topic: topic ?? this.topic,
      imageUrl: imageUrl ?? this.imageUrl,
      duration: duration ?? this.duration,
      hardness: hardness ?? this.hardness,
      description: description ?? this.description,
      quizDateTime: quizDateTime ?? this.quizDateTime,
      organizationName: organizationName ?? this.organizationName,
      organizationEmail: organizationEmail ?? this.organizationEmail,
      organizationWebsite: organizationWebsite ?? this.organizationWebsite,
      joinedUsersUidList: joinedUsersUidList ?? this.joinedUsersUidList,
      usersInvitedUidList: usersInvitedUidList ?? this.usersInvitedUidList,
      questions: questions ?? this.questions,
      category: category ?? this.category,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': topic,
      'imageUrl': imageUrl,
      'duration': duration,
      'hardness': hardness,
      'description': description,
      'quizDateTime': quizDateTime.millisecondsSinceEpoch,
      'organizationName': organizationName,
      'organizationEmail': organizationEmail,
      'organizationWebsite': organizationWebsite,
      'joined_users_uid_list': joinedUsersUidList,
      'users_invited_uid_list': usersInvitedUidList,
      'questions': questions.map((x) => x.toMap()).toList(),
      'category': category,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      topic: map['topic'] as String,
      imageUrl: map['imageUrl'] as String,
      duration: map['duration'] as int,
      hardness: map['hardness'] as String,
      description: map['description'] as String,
      quizDateTime:
          DateTime.fromMillisecondsSinceEpoch(map['quizDateTime'] as int),
      organizationName: map['organizationName'] as String,
      organizationEmail: map['organizationEmail'] as String,
      organizationWebsite: map['organizationWebsite'] as String,
      joinedUsersUidList:
          List<String>.from((map['joined_users_uid_list'] as List<String>)),
      usersInvitedUidList:
          List<String>.from((map['users_invited_uid_list'] as List<String>)),
      questions: List<QuestionModel>.from(
        (map['questions'] as List<int>).map<QuestionModel>(
          (x) => QuestionModel.fromMap(x as Map<String, dynamic>),
        ),
      ),
      category: List<String>.from((map['category'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) =>
      QuizModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'QuizModel(topic: $topic, imageUrl: $imageUrl, duration: $duration, hardness: $hardness, description: $description, quizDateTime: $quizDateTime, organizationName: $organizationName, organizationEmail: $organizationEmail, organizationWebsite: $organizationWebsite, joinedUsersUidList: $joinedUsersUidList, usersInvitedUidList: $usersInvitedUidList, questions: $questions, category: $category)';
  }

  @override
  bool operator ==(covariant QuizModel other) {
    if (identical(this, other)) return true;

    return other.topic == topic &&
        other.imageUrl == imageUrl &&
        other.duration == duration &&
        other.hardness == hardness &&
        other.description == description &&
        other.quizDateTime == quizDateTime &&
        other.organizationName == organizationName &&
        other.organizationEmail == organizationEmail &&
        other.organizationWebsite == organizationWebsite &&
        listEquals(other.joinedUsersUidList, joinedUsersUidList) &&
        listEquals(other.usersInvitedUidList, usersInvitedUidList) &&
        listEquals(other.questions, questions) &&
        listEquals(other.category, category);
  }

  @override
  int get hashCode {
    return topic.hashCode ^
        imageUrl.hashCode ^
        duration.hashCode ^
        hardness.hashCode ^
        description.hashCode ^
        quizDateTime.hashCode ^
        organizationName.hashCode ^
        organizationEmail.hashCode ^
        organizationWebsite.hashCode ^
        joinedUsersUidList.hashCode ^
        usersInvitedUidList.hashCode ^
        questions.hashCode ^
        category.hashCode;
  }
}
