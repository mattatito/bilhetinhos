import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_data_repository.dart';
import 'package:bilhetinhos/modules/home/domain/errors/fetch_pots_errors.dart';
import 'package:bilhetinhos/modules/home/domain/models/note_model.dart';
import 'package:bilhetinhos/modules/home/domain/models/pot_model.dart';
import 'package:bilhetinhos/modules/home/domain/repositories/pot_repository.dart';
import 'package:bilhetinhos/modules/home/domain/use_cases/fetch_all_pots_by_user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<UserDataRepository>(), MockSpec<PotRepository>()])
import 'fetch_all_pots_by_user_use_case_test.mocks.dart';

void main() {
  late MockUserDataRepository mockUserDataRepository;
  late MockPotRepository mockPotRepository;
  late FetchAllCurrentUserPotsUseCase fetchAllPotsByUserUseCase;

  setUpAll(() {
    mockUserDataRepository = MockUserDataRepository();
    mockPotRepository = MockPotRepository();
    fetchAllPotsByUserUseCase =
        FetchAllCurrentUserPotsUseCaseImpl(mockUserDataRepository, mockPotRepository);
  });

  group('Given logged user', () {
    setUp(() {
      final expectedUserData = UserDataModel(userId: 'userId');
      when(mockUserDataRepository.getCurrentUserData()).thenAnswer((_) async => expectedUserData);
    });

    test('Should fetch my little pots', () async {
      final expectedPots = <PotModel>[
        PotModel(
          id: '1',
          title: 'Pot',
          notes: <NoteModel>[NoteModel(id: 'id', content: 'Content', color: '#FFF')],
        ),
      ];
      when(mockPotRepository.getPotsByUser(any)).thenAnswer((_) async => (expectedPots, NoPotsError()));

      final (pots, error) = await fetchAllPotsByUserUseCase.fetchPots();

      expect(pots, equals(expectedPots));
      expect(error, isA<NoPotsError>());
    });

    group('When server error occurs', () {
      test('Should return unexpected error', () async {
        when(mockPotRepository.getPotsByUser(any))
            .thenAnswer((_) async => (<PotModel>[], PotsUnexpectedError()));
        final (pots, error) = await fetchAllPotsByUserUseCase.fetchPots();

        expect(error, isA<PotsUnexpectedError>());
        expect(pots, isEmpty);
      });
      test('Should return service error', () async {
        when(mockPotRepository.getPotsByUser(any))
            .thenAnswer((_) async => (<PotModel>[], PotsServiceUnavailableError()));
        final (pots, error) = await fetchAllPotsByUserUseCase.fetchPots();

        expect(error, isA<PotsServiceUnavailableError>());
        expect(pots, isEmpty);
      });
    });

    group('When cannot get user data', () {
      test('Should return FetchPotsNoUserDataError', () async {
        when(mockUserDataRepository.getCurrentUserData()).thenAnswer((_) async => null);
        final (pots, error) = await fetchAllPotsByUserUseCase.fetchPots();

        expect(error, isA<PotsNoUserDataFoundError>());
        expect(pots, isEmpty);
      });
    });
  });
}
