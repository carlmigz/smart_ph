import 'package:smart_ph/features/auth/domain/entity/user.dart';

class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.firstName,
    required super.lastName,
  });
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? 0,
      email: json['email'] ?? '',
      firstName: json['first_name'] ?? '',
      lastName: json['last_name'] ?? '',
    );
  }
}
