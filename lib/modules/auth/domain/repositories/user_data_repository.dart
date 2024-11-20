

import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';

abstract interface class UserDataRepository {
  Future<UserDataModel?> getCurrentUserData();
}
