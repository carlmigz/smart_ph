import 'package:smart_ph/core/network/dio_client.dart';
import 'package:smart_ph/features/auth/data/models/user_models.dart';

class AuthRemoteDataSource {
  final DioClient client;
  AuthRemoteDataSource(this.client);
  Future<String> login(String email, String password) async {
    final res = await client.dio.post(
      '/login',
      data: {"email": email, "password": password},
    );
    return res.data['token'];
  }

  Future<String> signup(String email, String password) async {
    final res = await client.dio.post(
      '/register',
      data: {"email": email, "password": password},
    );
    return res.data['token'];
  }

  Future<UserModel> getProfile(int id) async {
    final res = await client.dio.get('/users/$id');
    return UserModel.fromJson(res.data['data']);
  }
}
