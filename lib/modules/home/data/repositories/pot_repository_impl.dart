
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';
import 'package:bilhetinhos/modules/home/domain/repositories/pot_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class PotRepositoryImpl implements PotRepository {

  final FirebaseFirestore firebaseFirestore;

  PotRepositoryImpl(this.firebaseFirestore);

  @override
  Future<(List<PotModel>, PotsErrors)> getPotsByUser(String userId) async {
    final potData = await firebaseFirestore.collection('pots').doc(userId).get();

    return (<PotModel>[], NoPotsError());
  }
}
