import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_ph/features/auth/domain/usecases/login_usecase.dart';
import 'package:smart_ph/features/auth/domain/usecases/profile_usecase.dart';
import 'package:smart_ph/features/auth/domain/usecases/signup_usecase.dart';
import 'package:smart_ph/features/auth/presentation/bloc/auth_event.dart';
import 'package:smart_ph/features/auth/presentation/bloc/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final SignupUseCase signupUseCase;
  final GetProfileUseCase profileUseCase;
  AuthBloc(this.loginUseCase, this.signupUseCase, this.profileUseCase) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthLoading());
      try { final token = await loginUseCase({'email': event.email, 'password': event.password}); emit(AuthSuccess(token)); } catch (e) { emit(AuthError(e.toString())); }
    });
    on<SignupEvent>((event, emit) async {
      emit(AuthLoading());
      try { final token = await signupUseCase({'email': event.email, 'password': event.password}); emit(AuthSuccess(token)); } catch (e) { emit(AuthError(e.toString())); }
    });
    on<GetProfileEvent>((event, emit) async {
      emit(AuthLoading());
      try { final user = await profileUseCase(event.id); emit(ProfileLoaded(user)); } catch (e) { emit(AuthError(e.toString())); }
    });
  }
}
