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
    apiKey: 'AIzaSyDMnXLS8K3_Gc7_q6--Z8zcNyb579nPviw',
    appId: '1:541258104777:web:2aaf6621a8252300e73218',
    messagingSenderId: '541258104777',
    projectId: 'authentication-3d767',
    authDomain: 'authentication-3d767.firebaseapp.com',
    storageBucket: 'authentication-3d767.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAuN-vVvtUSE55JphZ5riUMSshioeloRRI',
    appId: '1:541258104777:android:d1aaa4b4b8dbebcce73218',
    messagingSenderId: '541258104777',
    projectId: 'authentication-3d767',
    storageBucket: 'authentication-3d767.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBNAJhzgarPuCmjN1rZ3Rwog8f-od_c2OM',
    appId: '1:541258104777:ios:8bd5762b828fc44be73218',
    messagingSenderId: '541258104777',
    projectId: 'authentication-3d767',
    storageBucket: 'authentication-3d767.appspot.com',
    iosBundleId: 'com.example.expenseTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBNAJhzgarPuCmjN1rZ3Rwog8f-od_c2OM',
    appId: '1:541258104777:ios:920fb3f99b9a5afbe73218',
    messagingSenderId: '541258104777',
    projectId: 'authentication-3d767',
    storageBucket: 'authentication-3d767.appspot.com',
    iosBundleId: 'com.example.expenseTracker.RunnerTests',
  );
}