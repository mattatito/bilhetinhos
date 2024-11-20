
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';
import 'package:bilhetinhos/modules/home/domain/repositories/pot_repository.dart';

class PotRepositoryImpl implements PotRepository {

  @override
  Future<(List<PotModel>, PotsErrors)> getPotsByUser(String userId) {
    // TODO: implement getPotsByUser
    throw UnimplementedError();
  }

}