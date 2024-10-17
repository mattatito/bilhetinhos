

import 'dart:developer';

import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';

abstract interface class LoginUserUseCase {
  Future<void> loginUser(String email, String password);
}

class LoginUserUseCaseImpl implements LoginUserUseCase {

  final UserAuthenticationRepository _loginUserRepository;

  LoginUserUseCaseImpl(this._loginUserRepository);

  @override
  Future<void> loginUser(String email, String password) async {
    try{
      await _loginUserRepository.loginUserWithEmailAndPassword(email, password);
      log("LoginUserUseCase SUCCESS!!!!");
    }catch(e){
      log("LoginUserUseCase error: ${e.toString()}", error: e);
    }
  }

}
