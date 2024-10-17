import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: OutlineTextField(labelText: 'Nome'),
          ),
          const Flexible(
            child: OutlineTextField(labelText: 'E-mail'),
          ),
          const Flexible(
            child: OutlineTextField(
              labelText: 'Senha',
            ),
          ),
          const Flexible(
            child: OutlineTextField(labelText: 'Confirme sua senha'),
          ),
          Flexible(
            child: SizedBox(
                width: double.maxFinite,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: colorScheme.primaryContainer,
                      overlayColor: colorScheme.onPrimaryContainer),
                  child: Text(
                    'Registrar',
                    style: TextStyle(color: colorScheme.onPrimaryContainer),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
