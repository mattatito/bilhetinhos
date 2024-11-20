

import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';

abstract interface class PotRepository{
  Future<(List<PotModel>, PotsErrors)> getPotsByUser(String userId);
}