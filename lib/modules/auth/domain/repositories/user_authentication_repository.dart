
import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';

abstract interface class UserRemoteAuthenticationRepository {
  Future<(UserModel, AuthErrors)> loginUserWithEmailAndPassword(String email, String password);
  Future<AuthErrors?> createUser(String name, String email, String password);
}