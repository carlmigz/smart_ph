import 'package:smart_ph/features/auth/domain/entity/user.dart';

abstract class AuthRepository {
  Future<String> login(String email, String password);
  Future<String> signup(String email, String password);
  Future<User> getProfile(int id);
}