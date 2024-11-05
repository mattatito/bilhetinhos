import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/create_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/register_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/register_viewmodel.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateAccountPage extends StatelessWidget {
  final registerViewModel = RegisterViewModel(
    CreateUserUseCaseImpl(
      UserAuthenticationRepositoryImpl(FirebaseAuth.instance),
    ),
  );

  CreateAccountPage({super.key});

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
              child: Text(
                "Crie sua conta",
                style: TextStyle(fontSize: 32),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'Nome',
                onChanged: (value) => registerViewModel.changeUserNameValue(value ?? ""),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'E-mail',
                onChanged: (value) => registerViewModel.changeEmailValue(value ?? ""),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'Senha',
                onChanged: (value) => registerViewModel.changePasswordValue(value ?? ""),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Flexible(
              child: OutlineTextField(
                labelText: 'Confirme sua senha',
                onChanged: (value) => registerViewModel.changeConfirmPasswordValue(value ?? ""),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Flexible(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    'Sua senha deve conter no mínimo:\numa letra maiúscula, uma letra minúscula, um número e um caracter especial',
                    style: TextStyle(
                      color: colorScheme.primary,
                    ),
                    textAlign: TextAlign.start,
                  ),
                )),
            Flexible(flex: 1, child: Container()),
            Flexible(
              child: SizedBox(
                  width: double.maxFinite,
                  height: 56,
                  child: BlocBuilder<RegisterViewModel, RegisterState>(
                      bloc: registerViewModel,
                      builder: (context, state) {
                        return ElevatedButton(
                          onPressed: state.loading ? null : registerViewModel.registerUser,
                          style: ElevatedButton.styleFrom(
                              backgroundColor: colorScheme.primaryContainer,
                              overlayColor: colorScheme.onPrimaryContainer),
                          child: state.loading
                              ? const Center(child: CircularProgressIndicator())
                              : Text(
                                  'Criar conta',
                                  style: TextStyle(color: colorScheme.onPrimaryContainer),
                                ),
                        );
                      })),
            ),
          ],
        ),
      ),
    );
  }
}
