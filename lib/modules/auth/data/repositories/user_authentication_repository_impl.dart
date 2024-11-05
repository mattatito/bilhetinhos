import 'dart:async';

import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserAuthenticationRepositoryImpl implements UserRemoteAuthenticationRepository {
  final FirebaseAuth auth;

  UserAuthenticationRepositoryImpl(this.auth);

  static const firebaseInvalidLoginCredentialsCode = 'invalid-credential';
  static const firebaseEmailAlreadyInUse = 'email-already-in-use';
  static const firebaseNetworkRequestFailed = 'network-request-failed';

  @override
  Future<(UserModel, AuthErrors)> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      final userCredentials =
          await auth.signInWithEmailAndPassword(email: email, password: password);
      final user = userCredentials.user;

      if (user == null || user.displayName == null || user.email == null) {
        return (UserModel.empty(), InvalidLoginCredentialsError());
      }


      return (UserModel(email: user.email!, name: user.displayName!), NoAuthError());
    } on FirebaseAuthException catch (e) {
      if (e.code == firebaseInvalidLoginCredentialsCode) {
        return (UserModel.empty(), InvalidLoginCredentialsError());
      }
      if(e.code == firebaseNetworkRequestFailed){
        return  (UserModel.empty(), AuthNetworkRequestFailedError());
      }
    }
    return (UserModel.empty(), InvalidLoginCredentialsError());
  }

  @override
  Future<AuthErrors?> createUser(String name, String email, String password) async {
    try{
      final userCredential = await auth.createUserWithEmailAndPassword(email: email, password: password);
      await userCredential.user?.updateDisplayName(name);

      return NoAuthError();
    } on FirebaseAuthException catch(e){
      if(e.code == firebaseEmailAlreadyInUse){
        return EmailAlreadyInUseError();
      }
      if(e.code == firebaseNetworkRequestFailed){
        return AuthNetworkRequestFailedError();
      }
    }
    return UnexpectedAuthError();
  }
}
