abstract class AuthEvent {}
class LoginEvent extends AuthEvent { final String email; final String password; LoginEvent(this.email, this.password); }
class SignupEvent extends AuthEvent { final String email; final String password; SignupEvent(this.email, this.password); }
class GetProfileEvent extends AuthEvent { final int id; GetProfileEvent(this.id); }