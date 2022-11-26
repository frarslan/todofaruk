import 'dart:convert';

LoginModel loginFromJson(dynamic str) => LoginModel.fromJson(str);

String loginToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.user,
    required this.token,
  });

  final User user;
  final String token;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
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

class RegisterUser {
  RegisterUser(
      {required this.name,
      required this.email,
      required this.password,
      required this.age});

  final String name;
  final String email;
  final String password;
  final int age;

  factory RegisterUser.nonParams() {
    return RegisterUser(name: '', email: '', password: '', age: 0);
  }

  RegisterUser copyWith({
    int? age,
    String? name,
    String? email,
    String? password,
  }) =>
      RegisterUser(
          age: age ?? this.age,
          name: name ?? this.name,
          email: email ?? this.email,
          password: password ?? this.password);

  Map<String, dynamic> toJson() =>
      {"name": name, "email": email, "password": password, "age": age};
}
