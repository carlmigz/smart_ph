import 'package:smart_ph/features/auth/data/source/auth_remote_data.dart';
import 'package:smart_ph/features/auth/domain/entity/user.dart';
import 'package:smart_ph/features/auth/domain/repo/auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;
  AuthRepositoryImpl(this.remote);
  @override
  Future<String> login(String email, String password) => remote.login(email, password);
  @override
  Future<String> signup(String email, String password) => remote.signup(email, password);
  @override
  Future<User> getProfile(int id) => remote.getProfile(id);
}