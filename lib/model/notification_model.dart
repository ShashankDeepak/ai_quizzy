// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class NotificationModel {
  List<String> quizModelUidList;
  DateTime notificationDateTime;
  NotificationModel({
    required this.quizModelUidList,
    required this.notificationDateTime,
  });

  NotificationModel copyWith({
    List<String>? quizModelUidList,
    DateTime? notificationDateTime,
  }) {
    return NotificationModel(
      quizModelUidList: quizModelUidList ?? this.quizModelUidList,
      notificationDateTime: notificationDateTime ?? this.notificationDateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'quizModelUidList': quizModelUidList,
      'notificationDateTime': notificationDateTime.millisecondsSinceEpoch,
    };
  }

  factory NotificationModel.fromMap(Map<String, dynamic> map) {
    return NotificationModel(
      quizModelUidList:
          List<String>.from((map['quizModelUidList'] as List<String>)),
      notificationDateTime: DateTime.fromMillisecondsSinceEpoch(
          map['notificationDateTime'] as int),
    );
  }

  String toJson() => json.encode(toMap());

  factory NotificationModel.fromJson(String source) =>
      NotificationModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'NotificationModel(quizModelUidList: $quizModelUidList, notificationDateTime: $notificationDateTime)';

  @override
  bool operator ==(covariant NotificationModel other) {
    if (identical(this, other)) return true;

    return listEquals(other.quizModelUidList, quizModelUidList) &&
        other.notificationDateTime == notificationDateTime;
  }

  @override
  int get hashCode => quizModelUidList.hashCode ^ notificationDateTime.hashCode;
}
