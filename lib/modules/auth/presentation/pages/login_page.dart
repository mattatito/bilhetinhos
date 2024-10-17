import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

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
                child: Text("Bilhetinhos"),
              ),
            ),
            const Flexible(
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Login'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Flexible(
              child: TextField(
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: 'Senha'),
              ),
            ),
            Flexible(flex: 1, child: Container()),
            Flexible(
              child: SizedBox(
                  width: double.maxFinite,
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: colorScheme.primaryContainer, overlayColor: colorScheme.onPrimaryContainer),
                    child: Text(
                      'Entrar',
                      style: TextStyle(color: colorScheme.onPrimaryContainer),
                    ),
                  )),
            ),
            const SizedBox(height: 12,),
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
