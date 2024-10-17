
import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {

  final String? labelText;
  final bool obscure;
  final Function(String?)? onChanged;

  const OutlineTextField({super.key, this.labelText, this.obscure = false, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(border: const OutlineInputBorder(), labelText: labelText),
      obscureText: obscure,
      onChanged: onChanged,
    );
  }
}
