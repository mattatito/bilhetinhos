import 'package:bilhetinhos/app_routes.dart';
import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/login_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/login_viewmodel.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        child:  BlocListener<LoginViewModel, LoginState>(
          bloc: loginViewModel,
          listener: (context, state) {
            if (state is ErrorLoginIn) {
              final value = state.message;
              showAdaptiveDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                        title: const Text('Ocorreu um problema.'),
                        content: Text(value),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Ok")),
                        ]);
                  });
            }
            if(state is LoggedUser){
              Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
            }
          },
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Flexible(
                flex: 2,
                child: Center(
                  child: Text(
                    "Bilhetinhos",
                    style: TextStyle(fontSize: 32),
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
                height: 16,
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
                  child: BlocBuilder<LoginViewModel, LoginState>(
                    bloc: loginViewModel,
                    builder: (context, state) {
                      final isLoading = state is LoadingLoginState;

                      return PrimaryButton(
                        onPressed: () => loginViewModel.loginUser(),
                        disabled: isLoading,
                        child: isLoading
                            ? const Center(
                          child: CircularProgressIndicator(),
                        )
                            : Text(
                          'Entrar',
                          style: TextStyle(color: colorScheme.onPrimaryContainer),
                        ),
                      );
                    },
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
                      onPressed: () => Navigator.of(context).pushNamed(AppRoutes.registerPage),
                      child: Text(
                        'Não possui conta? Crie uma clicando aqui',
                        style: TextStyle(color: colorScheme.onPrimaryContainer),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
