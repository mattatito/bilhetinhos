
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';

class ListNotesState {}

class ListPotsLoadingState extends ListNotesState{}

class ListPotsValueState extends ListNotesState{
  final List<PotModel> pots;

  ListPotsValueState({required this.pots});
}

class ListPotsError extends ListNotesState {
  final PotsErrors error;

  ListPotsError(this.error);
}
