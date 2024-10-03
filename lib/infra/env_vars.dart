
const firebaseProjectId = 'FIREBASE_PROJECT_ID_KEY';
const firebaseMessagingSenderId = 'FIREBASE_MESSAGING_SENDER_ID';
const firebaseStorageBucket = 'FIREBASE_STORAGE_BUCKET_KEY';

const firebaseAndroidApiKey = 'FIREBASE_ANDROID_API_KEY';
const firebaseAndroidAppIdKey = 'FIREBASE_ANDROID_APP_ID';

const firebaseIosApiKey = 'FIREBASE_IOS_API_KEY';
const firebaseIosAppId = 'FIREBASE_IOS_APP_ID';
const firebaseIosBundleId = 'FIREBASE_IOS_BUNDLE_ID';

///
///  Get environment variables defined by dart-define
///
class EnvironmentVars{

  static String getFirebaseProjectId() {
    return const String.fromEnvironment(firebaseProjectId);
  }

  static String getFirebaseMessagingSenderId() {
    return const String.fromEnvironment(firebaseMessagingSenderId);
  }

  static String getFirebaseStorageBucket() {
    return const String.fromEnvironment(firebaseStorageBucket);
  }

  static String getFirebaseAndroidApiKey() {
    return const String.fromEnvironment(firebaseAndroidApiKey);
  }

  static String getFirebaseAndroidAppIdKey() {
    return const String.fromEnvironment(firebaseAndroidAppIdKey);
  }

  static String getFirebaseIosApiKey() {
    return const String.fromEnvironment(firebaseIosApiKey);
  }

  static String getFirebaseIosBundleId() {
    return const String.fromEnvironment(firebaseIosBundleId);
  }
  static String getFirebaseIosAppId() {
    return const String.fromEnvironment(firebaseIosAppId);
  }
}
