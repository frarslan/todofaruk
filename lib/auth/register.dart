import 'package:flutter/material.dart';
import 'package:todofaruk/auth/auth_service.dart';
import 'package:todofaruk/auth/login.dart';
import 'package:todofaruk/auth/user_model.dart';

class Register extends StatelessWidget {
  Register({super.key});

  final RegisterUser _user = RegisterUser.nonParams();

  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var age = TextEditingController();

  // late RegisterUser user;

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextFormField(
            controller: name,
            onChanged: (value) {
              // user = _user.copyWith(name: value);
            },
          ),
          TextFormField(
            controller: email,
            onChanged: (value) {
              // user = _user.copyWith(email: value);
            },
          ),
          TextFormField(
            controller: password,
            onChanged: (value) {
              // user = _user.copyWith(password: value);
            },
          ),
          TextFormField(
            controller: age,
            onChanged: (value) {
              //  user = _user.copyWith(age: int.parse(value));
            },
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    var a = _user.copyWith(
                        name: name.text,
                        email: email.text,
                        password: password.text,
                        age: int.parse(age.text));
                    print(a.toJson());
                    authService.register(a.toJson());
                  },
                  child: Text('Register')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Text('Login'))
            ],
          )
        ],
      ),
    );
  }
}
