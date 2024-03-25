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
    apiKey: 'AIzaSyBFeBTv1Vsrsum8WquPLoasFTKflDFQEzI',
    appId: '1:710172931809:web:167b361cda54ac326429a0',
    messagingSenderId: '710172931809',
    projectId: 'hrm-digicue',
    authDomain: 'hrm-digicue.firebaseapp.com',
    storageBucket: 'hrm-digicue.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCi1h4dBot9zdn3nKztVpbnq01BhhvWxw8',
    appId: '1:710172931809:android:490717a3cc45625a6429a0',
    messagingSenderId: '710172931809',
    projectId: 'hrm-digicue',
    storageBucket: 'hrm-digicue.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAMAg3c9NlNVsKZLOIzq4lwisVuZageKcI',
    appId: '1:710172931809:ios:bb9999451012e1b56429a0',
    messagingSenderId: '710172931809',
    projectId: 'hrm-digicue',
    storageBucket: 'hrm-digicue.appspot.com',
    iosBundleId: 'com.example.hrmadmin',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAMAg3c9NlNVsKZLOIzq4lwisVuZageKcI',
    appId: '1:710172931809:ios:57c9aad1276917886429a0',
    messagingSenderId: '710172931809',
    projectId: 'hrm-digicue',
    storageBucket: 'hrm-digicue.appspot.com',
    iosBundleId: 'com.example.hrmadmin.RunnerTests',
  );
}
