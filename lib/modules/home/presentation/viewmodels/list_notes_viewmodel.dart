
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/use_cases/fetch_all_pots_by_user_use_case.dart';
import 'package:bilhetinhos/modules/home/presentation/states/list_notes_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListNotesViewModel extends Cubit<ListNotesState>{

  final FetchAllCurrentUserPotsUseCase _fetchAllCurrentUserPotsUseCase;

  ListNotesViewModel(this._fetchAllCurrentUserPotsUseCase) : super(ListNotesState());

  Future<void> fetchAllPots() async {
    emit(ListPotsLoadingState());
    final (pots, error) = await _fetchAllCurrentUserPotsUseCase.fetchPots();
    if(error is! NoPotsError){
      emit(ListPotsError(error));
      return;
    }
    emit(ListPotsValueState(pots: pots));
  }
}
