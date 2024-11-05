

import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/register_user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/create_user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<UserRemoteAuthenticationRepository>()])
import 'create_user_use_case_test.mocks.dart';

void main(){

  late MockUserRemoteAuthenticationRepository authRepository;
  late CreateUserUseCase createUserUseCase;

  setUp(() {
    authRepository = MockUserRemoteAuthenticationRepository();
    createUserUseCase = CreateUserUseCaseImpl(authRepository);
  });

  test('Should create user with no error', () async {
    final registerModel = RegisterUserModel(userName: 'userName', email: 'email@email.com', password: 'pass');
    when(authRepository.createUser(any, any, any)).thenAnswer((_) async => NoAuthError());

    final result = await createUserUseCase.registerUser(registerModel);

    expect(result,isA<NoAuthError>());
  });

}