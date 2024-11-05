import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/create_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/register_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/register_viewmodel.dart';
import 'package:bilhetinhos/modules/core-ui/widgets/dialogs/error_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../utils/dialog_error_message.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  final _formKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormFieldState>();
  final _confirmPasswordKey = GlobalKey<FormFieldState>();

  final registerViewModel = RegisterViewModel(
    CreateUserUseCaseImpl(
      UserAuthenticationRepositoryImpl(FirebaseAuth.instance),
    ),
  );

  void handleCreateButton() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();
      registerViewModel.registerUser();
    }
  }

  String? _verifyFieldIsEmpty(String? value) {
    if (value == null) {
      return null;
    }

    if (value.trim().isEmpty) {
      return AppLocalizations.of(context)!.mandatoryField;
    }
    return null;
  }

  String? _validateEmail(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);

    final emailValidator = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    final isValidEmail = emailValidator.hasMatch(value!);
    final validEmailMessage = isValidEmail ? null : AppLocalizations.of(context)!.invalidEmail;

    return isEmpty ?? validEmailMessage;
  }

  String? _passwordValidator(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);
    if (value == null) {
      return isEmpty;
    }

    if (value.length < 8) {
      return AppLocalizations.of(context)!.mustHaveMin8Characters;
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return AppLocalizations.of(context)!.mustContainsCapLetter;
    }

    if (!value.contains(RegExp(r'[^a-zA-Z\d\s:]'))) {
      return AppLocalizations.of(context)!.mustContainsSpecialChar;
    }

    return isEmpty;
  }

  String? _confirmPasswordValidator(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);

    if (value != null && _passwordKey.currentState?.value != value) {
      return AppLocalizations.of(context)!.confirmationMustBeEqualPassword;
    }

    return isEmpty;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: BlocListener<RegisterViewModel, RegisterState>(
            bloc: registerViewModel,
            listener: (context, state) {
              if (state is RegisterSucceed) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(AppLocalizations.of(context)!.accountCreatedSuccessfully)));
                Navigator.of(context).pop();
              }
              if (state is RegisterError) {
                final message = errorMessageByAuthError(context, state.error);
                showErrorDialog(context, message);
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  flex: 1,
                  child: Text(
                    AppLocalizations.of(context)!.createYourAccount,
                    style: const TextStyle(fontSize: 32),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Flexible(
                  child: BlocBuilder<RegisterViewModel, RegisterState>(
                      bloc: registerViewModel,
                      builder: (context, state) {
                        return TextFormField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: AppLocalizations.of(context)!.name),
                          onSaved: (value) => registerViewModel.changeUserNameValue(value ?? ''),
                          validator: _verifyFieldIsEmpty,
                        );
                      }),
                ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: AppLocalizations.of(context)!.email),
                    onSaved: (value) => registerViewModel.changeEmailValue(value ?? ""),
                    validator: _validateEmail,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: TextFormField(
                    key: _passwordKey,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: AppLocalizations.of(context)!.password),
                    onSaved: (value) => registerViewModel.changePasswordValue(value ?? ""),
                    validator: _passwordValidator,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Flexible(
                  child: TextFormField(
                    key: _confirmPasswordKey,
                    decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: AppLocalizations.of(context)!.confirmPassword),
                    onSaved: (value) => registerViewModel.changeConfirmPasswordValue(value ?? ""),
                    validator: _confirmPasswordValidator,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Flexible(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      AppLocalizations.of(context)!.passwordRequisites,
                      style: TextStyle(
                        color: colorScheme.primary,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Flexible(flex: 1, child: Container()),
                Flexible(
                  child: SizedBox(
                      width: double.maxFinite,
                      height: 56,
                      child: BlocBuilder<RegisterViewModel, RegisterState>(
                          bloc: registerViewModel,
                          builder: (context, state) {
                            return ElevatedButton(
                              onPressed: state.loading ? null : handleCreateButton,
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: colorScheme.primaryContainer,
                                  overlayColor: colorScheme.onPrimaryContainer),
                              child: state.loading
                                  ? const Center(child: CircularProgressIndicator())
                                  : Text(
                                      AppLocalizations.of(context)!.createAccount,
                                      style: TextStyle(color: colorScheme.onPrimaryContainer),
                                    ),
                            );
                          })),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
