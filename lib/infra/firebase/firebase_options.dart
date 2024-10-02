import 'package:bilhetinhos/infra/env_vars.dart';
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;


class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static FirebaseOptions android = FirebaseOptions(
    apiKey: EnvironmentVars.getFirebaseAndroidApiKey(),
    appId: EnvironmentVars.getFirebaseAndroidAppIdKey(),
    messagingSenderId: EnvironmentVars.getFirebaseMessagingSenderId(),
    projectId: EnvironmentVars.getFirebaseProjectId(),
    storageBucket: EnvironmentVars.getFirebaseStorageBucket(),
  );

  static FirebaseOptions ios = FirebaseOptions(
    apiKey: EnvironmentVars.getFirebaseIosApiKey(),
    appId: EnvironmentVars.getFirebaseIosAppId(),
    messagingSenderId: EnvironmentVars.getFirebaseMessagingSenderId(),
    projectId: EnvironmentVars.getFirebaseProjectId(),
    storageBucket: EnvironmentVars.getFirebaseStorageBucket(),
    iosBundleId: EnvironmentVars.getFirebaseIosBundleId(),
  );
}
