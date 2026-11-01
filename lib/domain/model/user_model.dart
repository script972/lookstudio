class UserModel {
  UserModel({required this.id, this.email, this.password, this.token, required this.loginDate});

  final String id;
  final String? email;
  final String? password;
  final String? token;
  final DateTime loginDate;
}
