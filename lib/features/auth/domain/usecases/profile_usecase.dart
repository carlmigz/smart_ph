import 'package:smart_ph/core/usecase/usecase.dart';
import 'package:smart_ph/features/auth/domain/entity/user.dart';
import 'package:smart_ph/features/auth/domain/repo/auth_repo.dart';

class GetProfileUseCase extends UseCase<User, int> {
  final AuthRepository repo;
  GetProfileUseCase(this.repo);
  @override
  Future<User> call(int id) => repo.getProfile(id);
}