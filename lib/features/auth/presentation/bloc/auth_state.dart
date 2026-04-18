import 'package:smart_ph/features/auth/domain/entity/user.dart';

abstract class AuthState {}
class AuthInitial extends AuthState {}
class AuthLoading extends AuthState {}
class AuthSuccess extends AuthState { final String token; AuthSuccess(this.token); }
class ProfileLoaded extends AuthState { final User user; ProfileLoaded(this.user); }
class AuthError extends AuthState { final String message; AuthError(this.message); }