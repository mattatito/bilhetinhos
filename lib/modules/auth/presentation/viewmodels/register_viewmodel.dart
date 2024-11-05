import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/register_user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/create_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterViewModel extends Cubit<RegisterState> {
  final CreateUserUseCase _createUserUseCase;

  RegisterViewModel(this._createUserUseCase) : super(RegisterState());

  Future<void> registerUser() async {
    emit(state.isLoading());
    final error = await _createUserUseCase.registerUser(RegisterUserModel(
      userName: state.userName,
      email: state.email,
      password: state.password,
    ));

    if (error is NoAuthError) {
      emit(RegisterSucceed());
      return;
    }

    emit(state.error('ERRO AQUI'));
  }

  void changeUserNameValue(String value) {
    emit(state.copyWith(userName: value));
  }

  void changeEmailValue(String value) {
    emit(state.copyWith(email: value));
  }

  void changePasswordValue(String value) {
    emit(state.copyWith(password: value));
  }

  void changeConfirmPasswordValue(String value) {
    emit(state.copyWith(confirmPassword: value));
  }
}
