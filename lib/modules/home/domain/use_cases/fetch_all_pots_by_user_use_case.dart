

import 'package:bilhetinhos/modules/auth/domain/repositories/user_data_repository.dart';
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';
import 'package:bilhetinhos/modules/home/domain/repositories/pot_repository.dart';

abstract interface class FetchAllCurrentUserPotsUseCase {
  Future<(List<PotModel>, PotsErrors)> fetchPots();
}

class FetchAllCurrentUserPotsUseCaseImpl implements FetchAllCurrentUserPotsUseCase {

  final UserDataRepository userDataRepository;
  final PotRepository potRepository;

  FetchAllCurrentUserPotsUseCaseImpl(this.userDataRepository, this.potRepository);

  @override
  Future<(List<PotModel>, PotsErrors)> fetchPots() async {
    try{
      final userData = await userDataRepository.getCurrentUserData();

      if(userData == null){
        return (<PotModel>[], PotsNoUserDataFoundError());
      }

      final (pots, error) = await potRepository.getPotsByUser(userData.userId);

      return (pots, error);
    }catch(_) {
      return (<PotModel>[], PotsUnexpectedError());
    }
  }
}
