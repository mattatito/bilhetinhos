
import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {

  final String? labelText;
  final bool obscure;
  final bool? enabled;
  final Function(String?)? onChanged;

  const OutlineTextField({super.key, this.labelText, this.obscure = false, this.onChanged, this.enabled});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enabled,
      decoration: InputDecoration(border: const OutlineInputBorder(), labelText: labelText),
      obscureText: obscure,
      onChanged: onChanged,
    );
  }
}
