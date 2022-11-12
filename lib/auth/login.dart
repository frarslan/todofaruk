import 'package:flutter/material.dart';

import 'auth_service.dart';

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
          TextField(onChanged: (value) => pass = name),
          Row(
            children: [
              ElevatedButton(
                  onPressed: () {
                    authService.login();
                  },
                  child: Text("Login")),
              ElevatedButton(onPressed: () {}, child: Text("Register"))
            ],
          ),
          TextButton(
              onPressed: () {}, child: Text("Forget password? Click Here."))
        ],
      ),
    );
  }
}
