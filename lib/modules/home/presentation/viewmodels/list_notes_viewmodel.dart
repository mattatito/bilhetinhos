




import 'package:bilhetinhos/modules/home/domain/use_cases/fetch_all_pots_by_user_use_case.dart';
import 'package:bilhetinhos/modules/home/presentation/states/list_notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListNotesViewModel extends Cubit<ListNotesState>{

  final FetchAllPotsByUserUseCase _fetchAllPotsByUserUseCase;

  ListNotesViewModel(this._fetchAllPotsByUserUseCase) : super(ListNotesState());

  Future<void> fetchAllPots() async {
    await _fetchAllPotsByUserUseCase.fetchPots();
  }
}
