import 'package:bilhetinhos/modules/auth/domain/errors/login_errors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String errorMessageByAuthError(BuildContext context, AuthErrors error){
  switch(error) {
    case InvalidLoginCredentialsError _:
      return AppLocalizations.of(context)!.invalidLoginErrorMessage;
    case AuthNetworkRequestFailedError _:
      return AppLocalizations.of(context)!.networkError;
    case EmailAlreadyInUseError _:
      return AppLocalizations.of(context)!.emailAlreadyInUse;
  }
    return AppLocalizations.of(context)!.unexpectedError;
}
