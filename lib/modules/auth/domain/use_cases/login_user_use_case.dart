
import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';

abstract interface class LoginUserUseCase {
  Future<AuthErrors> loginUser(String email, String password);
}

class LoginUserUseCaseImpl implements LoginUserUseCase {

  final UserRemoteAuthenticationRepository _loginUserRepository;

  LoginUserUseCaseImpl(this._loginUserRepository);

  @override
  Future<AuthErrors> loginUser(String email, String password) async {
      if(email.trim().isEmpty|| password.trim().isEmpty){
        return InvalidLoginCredentialsError();
      }
      final (userModel, error) = await _loginUserRepository.loginUserWithEmailAndPassword(email, password);
      return error;
  }
}
