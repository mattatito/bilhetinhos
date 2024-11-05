
class LoginState {}

class LoggedUser extends LoginState {}

class LoadingLoginState extends LoginState {}

class ErrorLoginIn extends LoginState {
  final String message;

  ErrorLoginIn({required this.message});
}