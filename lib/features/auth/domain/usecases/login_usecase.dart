import 'package:smart_ph/core/usecase/usecase.dart';
import 'package:smart_ph/features/auth/domain/repo/auth_repo.dart';

class LoginUseCase extends UseCase<String, Map<String, String>> {
  final AuthRepository repo;
  LoginUseCase(this.repo);
  @override
  Future<String> call(Map<String, String> params) =>
      repo.login(params['email']!, params['password']!);
}
