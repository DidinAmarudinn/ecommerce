import 'dart:convert';

import 'package:ecommerce/common/api_path.dart';
import 'package:ecommerce/model/user_model.dart';
import 'package:http/http.dart' as http;

class AuthService {
  Future<UserModel> registerUser(
    String name,
    String username,
    String email,
    String password,
  ) async {
    String url = baseUrl + register;
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      "name": name,
      "username": username,
      "email": email,
      "password": password,
    });

    var response = await http.post(Uri.parse(url), headers: header, body: body);
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      UserModel userModel = UserModel.fromJson(data);

      return userModel;
    } else {
      throw Exception("Gagal Register");
    }
  }

  Future<UserModel> loginUser(
    String email,
    String password,
  ) async {
    String url = baseUrl + login;
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      "email": email,
      "password": password,
    });

    var response = await http.post(Uri.parse(url), headers: header, body: body);
    print(response.body);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      UserModel userModel = UserModel.fromJson(data);
      print(userModel.data!.user!.name ?? " ");
      return userModel;
    } else {
      throw Exception("Gagal Login");
    }
  }
}
