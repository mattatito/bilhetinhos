
import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_data_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDataRepositoryImpl implements UserDataRepository {

  final FirebaseAuth auth;

  UserDataRepositoryImpl(this.auth);

  @override
  Future<UserDataModel?> getCurrentUserData() async {
    final firebaseCurrentUser = auth.currentUser;

    if(firebaseCurrentUser == null){
      return null;
    }

    return UserDataModel(userId: firebaseCurrentUser.uid);
  }
}
