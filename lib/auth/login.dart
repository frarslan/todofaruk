import 'package:flutter/material.dart';
import 'package:todofaruk/auth/auth_service.dart';
import 'package:todofaruk/auth/register.dart';

class Login extends StatelessWidget {
  Login({super.key});

  var name;
  var pass;

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextField(
            onChanged: (value) => name = value,
          ),
          TextField(
            onChanged: (value) => pass = value,
          ),
          Row(
            children: [
              TextButton(
                  onPressed: () {
                    authService.login();
                  },
                  child: const Text('Login')),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: const Text('Register')),
            ],
          )
        ],
      ),
    );
  }
}
