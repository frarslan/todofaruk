import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todofaruk/auth/user_model.dart';
import 'package:todofaruk/services/service_interceptor.dart';

class AuthService {
  final DioClient _dioClient = DioClient();
  late SharedPreferences prefs;

  Future<bool> deneme() {
    return setPrefs().then((value) {
      // prefs.remove('token');
      return isLogin();
    });
  }

  Future setPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<bool> isLogin() async {
    var token = prefs.getString('token');
    print('token: $token');
    if (token == null) {
      return false;
    }
    return true;
  }

  login() async {
    const data = {"email": "muh.nurali43@gmail.com", "password": "12345678"};
    print('data: $data');
    Response reponse = await _dioClient.dio.post('user/login', data: data);
    var dd = loginFromJson(reponse.data);
    if (dd.token != null) {
      prefs.setString('token', dd.token);
    }
  }

  register(dynamic user) async {
    print('user: $user');
    Response response = await _dioClient.dio.post('user/register', data: user);
    var dd = loginFromJson(response.data);
    if (dd.token != null) {
      prefs.setString('token', dd.token);
    }
  }
}
