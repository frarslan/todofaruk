import 'dart:convert';

Login loginFromJson(dynamic str) => Login.fromJson(str);

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.user,
    required this.token,
  });

  final User user;
  final String token;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        user: User.fromJson(json["user"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "token": token,
      };
}

class User {
  User({
    required this.age,
    required this.id,
    required this.name,
    required this.email,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  final int age;
  final String id;
  final String name;
  final String email;
  final String createdAt;
  final String updatedAt;
  final int v;

  factory User.fromJson(Map<String, dynamic> json) => User(
        age: json["age"],
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        createdAt: json["createdAt"],
        updatedAt: json["updatedAt"],
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "age": age,
        "_id": id,
        "name": name,
        "email": email,
        "createdAt": createdAt,
        "updatedAt": updatedAt,
        "__v": v,
      };
}
