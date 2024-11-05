import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/register_user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';

abstract interface class CreateUserUseCase {
  Future<AuthErrors> registerUser(RegisterUserModel registerUserModel);
}

class CreateUserUseCaseImpl implements CreateUserUseCase {

  final UserRemoteAuthenticationRepository _userRemoteAuthenticationRepository;

  CreateUserUseCaseImpl(this._userRemoteAuthenticationRepository);


  @override
  Future<AuthErrors> registerUser(RegisterUserModel registerUserModel) async {
    final error = await _userRemoteAuthenticationRepository.createUser(registerUserModel.userName, registerUserModel.email, registerUserModel.password);

    return error ?? NoAuthError();
  }
}
