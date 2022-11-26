import 'package:flutter/material.dart';
import 'package:todofaruk/auth/auth_service.dart';
import 'package:todofaruk/auth/login.dart';
import 'package:todofaruk/pages/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Merhaba İbrahim',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: FutureBuilder(
          future: authService.deneme(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              bool isLogin = snapshot.data!;
              if (isLogin) {
                return const Home();
              }
              return Login();
            }
            return const Center(
              child: Text('değişikkjkj'),
            );
          },
        ));
  }
}
