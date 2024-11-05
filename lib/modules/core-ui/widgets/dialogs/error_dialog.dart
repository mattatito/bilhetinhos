import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

showErrorDialog(BuildContext context, String message) {
  showAdaptiveDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text(AppLocalizations.of(context)!.problemOccurs),
            content: Text(message),
            actions: [
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text(AppLocalizations.of(context)!.ok)),
            ]);
      });
}