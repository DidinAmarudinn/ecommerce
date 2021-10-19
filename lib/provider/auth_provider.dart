import 'package:ecommerce/model/user_model.dart';
import 'package:ecommerce/services/auth_service.dart';
import 'package:flutter/cupertino.dart';

class AuthProvider extends ChangeNotifier {
  UserModel? _userModel;

  UserModel get user => _userModel!;

  set user(UserModel userModel) {
    _userModel = userModel;
    notifyListeners();
  }

  Future<bool> register(
      String name, String username, String email, String password) async {
    try {
      UserModel user =
          await AuthService().registerUser(name, username, email, password);
      if (user.data != null) {
        _userModel = user;
        return true;
      } else {
        notifyListeners();
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> login(String email, String password) async {
    try {
      UserModel user = await AuthService().loginUser(email, password);
      if (user.data != null) {
        _userModel = user;
        return true;
      } else {
        notifyListeners();
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
  }
}
