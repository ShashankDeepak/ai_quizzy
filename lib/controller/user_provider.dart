import 'package:ai_quizzy/service/user_service.dart';
import 'package:flutter/material.dart';
import 'package:ai_quizzy/model/user_model.dart';

class UserProvider extends ChangeNotifier {
  late UserModel userModel;
  String userId = "";

  UserService userService = UserService();

  void setUser(String id) async {
    userId = id;
    userModel = await userService.getUserModelById(userId);
    notifyListeners();
  }

  void addUserId(String userId) {
    this.userId = userId;
    notifyListeners();
  }

  void addRegisterQuiz(String quizUid) {
    userModel.joinedQuizUidList.add(quizUid);
    notifyListeners();
  }

  void addAiQuiz(String quizUid) {
    userModel.aiQuizUidList.add(quizUid);
    notifyListeners();
  }

  void addCreatedQuiz(String quizUid) {
    userModel.createdQuizUidList.add(quizUid);
    notifyListeners();
  }

  void addCoins(int coinsEarned) {
    userModel.coins += coinsEarned;
    notifyListeners();
  }

  void changeAvatar(String avatarUrl) async {
    userModel.avatar = avatarUrl;
    notifyListeners();
  }
}
