import 'package:bilhetinhos/modules/core-ui/widgets/outline_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

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
              height: 30,
            ),
            const Flexible(
              child: OutlineTextField(labelText: 'Nome'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Flexible(
              child: OutlineTextField(labelText: 'E-mail'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Flexible(
              child: OutlineTextField(
                labelText: 'Senha',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Flexible(
              child: OutlineTextField(labelText: 'Confirme sua senha'),
            ),
            Flexible(flex: 1, child: Container()),
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
      ),
    );
  }
}
