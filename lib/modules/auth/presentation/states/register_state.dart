import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';

class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;
  final bool loading;

  RegisterState({this.userName = '', this.email = '', this.password = '', this.confirmPassword = '', this.loading = false});

  RegisterState isLoading() => copyWith(loading: true);

  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
    bool? loading,
  }) {
    return RegisterState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      loading: loading ?? this.loading,
    );
  }
}

class RegisterSucceed extends RegisterState {
  RegisterSucceed();
}

class RegisterError extends RegisterState {

  final AuthErrors error;

  RegisterError(this.error);
}
