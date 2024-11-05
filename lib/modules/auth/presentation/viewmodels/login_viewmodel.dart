
import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewModel extends Cubit<LoginState>{
  final LoginUserUseCase _loginUserUseCase;

  final ValueNotifier<String> email = ValueNotifier("");
  final ValueNotifier<String> password = ValueNotifier("");

  LoginViewModel(this._loginUserUseCase) : super(LoginState());

  Future<void> loginUser() async {
    emit(LoadingLoginState());
    final error = await _loginUserUseCase.loginUser(email.value, password.value);
    if(error is NoAuthError){
      emit(LoggedUser());
      return;
    }
    emit(ErrorLoginIn(error: error));
  }
}
