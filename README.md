# bilhetinhos

- App de bilhetinhos
- Flutter v3.24.3

## How to run?

### Configure your firebase app

- Be sure to check:
file `google-services.json` is located in `/android/app/google-services.json`
file `firebase_options.dart` is located in `/lib/firebase_options.dart`
file `firebase.json` is located in `/firebase.json`

### Set your credentials on dart-define and start application

``` shell
    --dart-define=FIREBASE_PROJECT_ID_KEY=$key --dart-define=FIREBASE_MESSAGING_SENDER_ID=$id --dart-define=FIREBASE_STORAGE_BUCKET_KEY=$key --dart-define=FIREBASE_ANDROID_API_KEY=$androidApiKey --dart-define=FIREBASE_ANDROID_APP_ID=$AndroidAppId --dart-define=FIREBASE_IOS_API_KEY=$iosApiKey --dart-define=FIREBASE_IOS_APP_ID=$iosAppId --dart-define=FIREBASE_IOS_BUNDLE_ID=$iosBundleId
```


## Run tests

``` shell
    flutter test
```