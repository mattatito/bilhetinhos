import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:bilhetinhos/modules/auth/domain/models/user_model.dart';
import 'package:bilhetinhos/modules/auth/domain/repositories/user_authentication_repository.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<UserRemoteAuthenticationRepository>()])
import 'login_user_use_case_test.mocks.dart';

void main() {
  late MockUserRemoteAuthenticationRepository authRepository;
  late LoginUserUseCase loginUserUseCase;

  setUp(() {
    authRepository = MockUserRemoteAuthenticationRepository();
    loginUserUseCase = LoginUserUseCaseImpl(authRepository);
  });

  test('Should return invalid credentials when email and password are empty', () async {
    final result = await loginUserUseCase.loginUser("", "");

    expect(result, isA<InvalidLoginCredentialsError>());
  });

  test('Should return no error when user login successfully', () async {
    final loginResponse = (UserModel(name: 'name', email: 'email'), NoAuthError());
    when(authRepository.loginUserWithEmailAndPassword(any, any)).thenAnswer((_) async => loginResponse);

    final result = await loginUserUseCase.loginUser("user", "email");

    expect(result, isA<NoAuthError>());
  });
}
