import 'package:smart_ph/core/usecase/usecase.dart';
import 'package:smart_ph/features/auth/domain/repo/auth_repo.dart';

class SignupUseCase extends UseCase<String, Map<String, String>> {
  final AuthRepository repo;
  SignupUseCase(this.repo);
  @override
  Future<String> call(Map<String, String> params) => repo.signup(params['email']!, params['password']!);
}