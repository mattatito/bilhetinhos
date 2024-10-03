import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

class FirebaseConfiguration {

  static Future<void> initFirebase() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

}
