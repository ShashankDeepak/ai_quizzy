import 'dart:convert';
import 'package:ai_quizzy/model/user_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserService {
  Future<UserModel> getUserModelById(String id) async {
    String httpUrl = "${dotenv.env["API_BASE_URL"]!}/getUserById?id=$id";
    Response response = await http.get(Uri.parse(httpUrl));
    String json = jsonDecode(response.body);
    return UserModel.fromJson(json);
  }

  Future<String> addUserIdToLocalStorage(String userId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("uid", userId);
    return "uid";
  }
}
