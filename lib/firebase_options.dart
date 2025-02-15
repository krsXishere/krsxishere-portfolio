// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCGoBtgn5KCJ9XAiOqaJACElf7xAY4Ztck',
    appId: '1:1055966629396:web:77d5c9a43a280eba6fe101',
    messagingSenderId: '1055966629396',
    projectId: 'portfolio-krsxishere',
    authDomain: 'portfolio-krsxishere.firebaseapp.com',
    storageBucket: 'portfolio-krsxishere.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUyulM5S6AUQnk9Cc7FB7jzWVkcYhFPeM',
    appId: '1:1055966629396:android:34654b2e2f05b96a6fe101',
    messagingSenderId: '1055966629396',
    projectId: 'portfolio-krsxishere',
    storageBucket: 'portfolio-krsxishere.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAPFCVLlhctV_oLmu_9Ud14CB3jRqyM1Ds',
    appId: '1:1055966629396:ios:932212c910de1b0e6fe101',
    messagingSenderId: '1055966629396',
    projectId: 'portfolio-krsxishere',
    storageBucket: 'portfolio-krsxishere.appspot.com',
    iosBundleId: 'com.example.krsxisherePortfolio',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAPFCVLlhctV_oLmu_9Ud14CB3jRqyM1Ds',
    appId: '1:1055966629396:ios:73ece738297ef66d6fe101',
    messagingSenderId: '1055966629396',
    projectId: 'portfolio-krsxishere',
    storageBucket: 'portfolio-krsxishere.appspot.com',
    iosBundleId: 'com.example.krsxisherePortfolio.RunnerTests',
  );
}
