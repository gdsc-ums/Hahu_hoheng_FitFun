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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCoAInPEshPfpvqtGMihaUfupuSMFe3Hpk',
    appId: '1:37262681762:web:adc92d241313938a96d9fb',
    messagingSenderId: '37262681762',
    projectId: 'hahu-hoheng-fitfun',
    authDomain: 'hahu-hoheng-fitfun.firebaseapp.com',
    storageBucket: 'hahu-hoheng-fitfun.appspot.com',
    measurementId: 'G-4QVW3256KH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB2r9-rWQFbmSo4S9_H9yk5e_7qOHHw75g',
    appId: '1:37262681762:android:27f8feaf9940574096d9fb',
    messagingSenderId: '37262681762',
    projectId: 'hahu-hoheng-fitfun',
    storageBucket: 'hahu-hoheng-fitfun.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDOtcFjkYWR7tX8QjBK9ZqEhw2Q3lICm38',
    appId: '1:37262681762:ios:bc25db2c332f3d1196d9fb',
    messagingSenderId: '37262681762',
    projectId: 'hahu-hoheng-fitfun',
    storageBucket: 'hahu-hoheng-fitfun.appspot.com',
    iosBundleId: 'com.example.hahuHohengFitfun',
  );
}