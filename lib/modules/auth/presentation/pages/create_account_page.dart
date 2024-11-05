import 'package:bilhetinhos/modules/auth/data/repositories/user_authentication_repository_impl.dart';
import 'package:bilhetinhos/modules/auth/domain/use_cases/create_user_use_case.dart';
import 'package:bilhetinhos/modules/auth/presentation/states/register_state.dart';
import 'package:bilhetinhos/modules/auth/presentation/viewmodels/register_viewmodel.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      return 'Campo obrigatório.';
    }
    return null;
  }

  String? _validateEmail(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);

    final emailValidator = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    final isValidEmail = emailValidator.hasMatch(value!);
    final validEmailMessage = isValidEmail ? null : 'E-mail inválido';

    return isEmpty ?? validEmailMessage;
  }

  String? _passwordValidator(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);
    if (value == null) {
      return isEmpty;
    }

    if (value.length < 8) {
      return 'Deve ter no minimo 8 caracteres.';
    }

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Deve conter uma letra maiúscula.';
    }

    if (!value.contains(RegExp(r'[^a-zA-Z\d\s:]'))) {
      return 'Deve conter um caracter especial.';
    }

    return isEmpty;
  }

  String? _confirmPasswordValidator(String? value) {
    final isEmpty = _verifyFieldIsEmpty(value);

    if (value != null && _passwordKey.currentState?.value != value) {
      return 'A confirmação deve ser igual a senha.';
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
              if(state is RegisterSucceed){
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Conta criada com sucesso!')));
                Navigator.of(context).pop();
              }
              if(state is RegisterError){
                showAdaptiveDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                          title: const Text('Ocorreu um problema.'),
                          content: Text(state.errorMessage),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text("Ok")),
                          ]);
                    });
              }
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Flexible(
                  flex: 1,
                  child: Text(
                    "Crie sua conta",
                    style: TextStyle(fontSize: 32),
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
                          decoration:
                              const InputDecoration(border: OutlineInputBorder(), labelText: 'Nome'),
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
                    decoration:
                        const InputDecoration(border: OutlineInputBorder(), labelText: 'E-mail'),
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
                    decoration:
                        const InputDecoration(border: OutlineInputBorder(), labelText: 'Senha'),
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
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'Confirme sua senha'),
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
                    'Sua senha deve conter no mínimo:\ 8 digitos, uma letra maiúscula e um caracter especial',
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
                              onPressed: state.loading ? null : handleCreateButton,
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
        ),
      ),
    );
  }
}
