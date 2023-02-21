import 'package:floor/floor.dart';

@entity
class User {
  User({required this.id, this.email, this.password, required this.loginDate});

  @PrimaryKey()
  final String id;
  final String? email;
  final String? password;
  final DateTime loginDate;
}
