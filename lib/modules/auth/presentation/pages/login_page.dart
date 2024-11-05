import 'package:bilhetinhos/app_routes.dart';
import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/login_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/login_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/utils/dialog_error_message.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/login_viewmodel.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/dialogs/error_dialog.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/primary_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
              final message = errorMessageByAuthError(context, state.error);
              showErrorDialog(context, message);
            } 
            if(state is LoggedUser){
              Navigator.of(context).pushReplacementNamed(AppRoutes.homePage);
            }
          },
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Center(
                  child: Text(
                    AppLocalizations.of(context)!.littleNote,
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
              ),
              Flexible(
                child: OutlineTextField(
                  labelText: AppLocalizations.of(context)!.email,
                  onChanged: (value) => loginViewModel.email.value = value ?? "",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Flexible(
                child: OutlineTextField(
                  labelText: AppLocalizations.of(context)!.password,
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
                          AppLocalizations.of(context)!.signIn,
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
                        AppLocalizations.of(context)!.dontHaveAnAccountClickHere,
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
