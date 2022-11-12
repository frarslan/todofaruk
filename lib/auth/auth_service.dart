import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:todofaruk/auth/user_model.dart';

class AuthService {
  login() async {
    Dio dio = Dio();
    const url = "https://api-nodejs-todolist.herokuapp.com/user/login";
    const data = {"email": "muh.nurali43@gmail.com", "password": "12345678"};
    var response = await dio.post(url, data: data);
    var dd = loginFromJson(response.data);
    print(dd.toJson());
  }
}
