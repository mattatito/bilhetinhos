

import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/login_state.dart';
import 'package:flutter/material.dart';

class LoginViewModel {
  final LoginUserUseCase _loginUserUseCase;

  final ValueNotifier<LoginState> loginState = ValueNotifier(LoginState());
  final ValueNotifier<String> email = ValueNotifier("");
  final ValueNotifier<String> password = ValueNotifier("");

  LoginViewModel(this._loginUserUseCase);

  Future<void> loginUser() async {
    loginState.value = LoadingLoginState();
    await _loginUserUseCase.loginUser(email.value, password.value);
    loginState.value = LoggedUser();
  }
}
