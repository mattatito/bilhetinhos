class RegisterState {
  final String userName;
  final String email;
  final String password;
  final String confirmPassword;
  final String? errorMessage;
  final bool loading;

  RegisterState({this.userName = '', this.email = '', this.password = '', this.confirmPassword = '', this.errorMessage, this.loading = false});

  RegisterState isLoading() => copyWith(loading: true);

  RegisterState error(String message) => copyWith(loading: false, errorMessage: message);

  RegisterState copyWith({
    String? userName,
    String? email,
    String? password,
    String? confirmPassword,
    String? errorMessage,
    bool? loading,
  }) {
    return RegisterState(
      userName: userName ?? this.userName,
      email: email ?? this.email,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      errorMessage: errorMessage ?? this.errorMessage,
      loading: loading ?? this.loading,
    );
  }
}

class RegisterSucceed extends RegisterState {
  RegisterSucceed();
}
