// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  String name;
  String avatar;
  String username;
  String email;
  int coins;
  int rank;
  List<String> aiQuizUidList;
  List<String> joinedQuizUidList;
  List<String> createdQuizUidList;
  List<String> notificationUidList;
  UserModel({
    required this.name,
    required this.avatar,
    required this.username,
    required this.email,
    required this.coins,
    required this.rank,
    required this.aiQuizUidList,
    required this.joinedQuizUidList,
    required this.createdQuizUidList,
    required this.notificationUidList,
  });

  UserModel copyWith({
    String? name,
    String? avatar,
    String? username,
    String? email,
    int? coins,
    int? rank,
    List<String>? aiQuizUidList,
    List<String>? joinedQuizUidList,
    List<String>? createdQuizUidList,
    List<String>? notificationUidList,
  }) {
    return UserModel(
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
      username: username ?? this.username,
      email: email ?? this.email,
      coins: coins ?? this.coins,
      rank: rank ?? this.rank,
      aiQuizUidList: aiQuizUidList ?? this.aiQuizUidList,
      joinedQuizUidList: joinedQuizUidList ?? this.joinedQuizUidList,
      createdQuizUidList: createdQuizUidList ?? this.createdQuizUidList,
      notificationUidList: notificationUidList ?? this.notificationUidList,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'avatar': avatar,
      'username': username,
      'email': email,
      'coins': coins,
      'rank': rank,
      'ai_quiz_uid_list': aiQuizUidList,
      'joined_quiz_uid_list': joinedQuizUidList,
      'created_quiz_uid_list': createdQuizUidList,
      'notification_uid_list': notificationUidList,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      avatar: map['avatar'] as String,
      username: map['username'] as String,
      email: map['email'] as String,
      coins: map['coins'] as int,
      rank: map['rank'] as int,
      aiQuizUidList:
          List<String>.from((map['ai_quiz_uid_list'] as List<String>)),
      joinedQuizUidList:
          List<String>.from((map['joined_quiz_uid_list'] as List<String>)),
      createdQuizUidList:
          List<String>.from((map['created_quiz_uid_list'] as List<String>)),
      notificationUidList:
          List<String>.from((map['notification_uid_list'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(name: $name, avatar: $avatar, username: $username, email: $email, coins: $coins, rank: $rank, aiQuizUidList: $aiQuizUidList, joinedQuizUidList: $joinedQuizUidList, createdQuizUidList: $createdQuizUidList, notificationUidList: $notificationUidList)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.avatar == avatar &&
        other.username == username &&
        other.email == email &&
        other.coins == coins &&
        other.rank == rank &&
        listEquals(other.aiQuizUidList, aiQuizUidList) &&
        listEquals(other.joinedQuizUidList, joinedQuizUidList) &&
        listEquals(other.createdQuizUidList, createdQuizUidList) &&
        listEquals(other.notificationUidList, notificationUidList);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        avatar.hashCode ^
        username.hashCode ^
        email.hashCode ^
        coins.hashCode ^
        rank.hashCode ^
        aiQuizUidList.hashCode ^
        joinedQuizUidList.hashCode ^
        createdQuizUidList.hashCode ^
        notificationUidList.hashCode;
  }
}
