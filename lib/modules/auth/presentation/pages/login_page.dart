import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/login_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/login_viewmodel.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final LoginViewModel loginViewModel = LoginViewModel(
    LoginUserUseCaseImpl(
      UserAuthenticationRepositoryImpl(FirebaseAuth.instance),
    ),
  );

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Flexible(
              flex: 2,
              child: Center(
                child: Text(
                  "Bilhetinhos",
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'E-mail',
                onChanged: (value) => loginViewModel.email.value = value ?? "",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'Senha',
                obscure: true,
                onChanged: (value) => loginViewModel.password.value = value ?? "",
              ),
            ),
            Flexible(flex: 1, child: Container()),
            Flexible(
              child: SizedBox(
                width: double.maxFinite,
                height: 56,
                child: PrimaryButton(
                  onPressed: () => loginViewModel.loginUser(),
                  child: ValueListenableBuilder<LoginState>(
                    builder: (context, state, widget) {

                      if(state is LoadingLoginState){
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Text(
                        'Entrar',
                        style: TextStyle(color: colorScheme.onPrimaryContainer),
                      );
                    },
                    valueListenable: loginViewModel.loginState,
                  )
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
              child: SizedBox(
                  width: double.maxFinite,
                  height: 48,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Não possui conta? Crie uma clicando aqui',
                      style: TextStyle(color: colorScheme.onPrimaryContainer),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
