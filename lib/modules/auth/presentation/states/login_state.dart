
import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';

class LoginState {}

class LoggedUser extends LoginState {}

class LoadingLoginState extends LoginState {}

class ErrorLoginIn extends LoginState {
  final AuthErrors error;

  ErrorLoginIn({required this.error});
}