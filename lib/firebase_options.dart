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
    apiKey: 'AIzaSyA0rI8vAahuWOoYVTyk05PGgn8ts0ZQ378',
    appId: '1:754497084151:web:53ecad834b4380771291f2',
    messagingSenderId: '754497084151',
    projectId: 'mikedcares-therapy-app',
    authDomain: 'mikedcares-therapy-app.firebaseapp.com',
    storageBucket: 'mikedcares-therapy-app.appspot.com',
    measurementId: 'G-38FCJXBKLQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCkFTLC7j1gvhOgYhu4aA8gX_0H95MLYQ0',
    appId: '1:754497084151:android:dc7ae91aafab1fa31291f2',
    messagingSenderId: '754497084151',
    projectId: 'mikedcares-therapy-app',
    storageBucket: 'mikedcares-therapy-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTO_ieYg5vriJjRFe1y31pbYt1nS5ppLI',
    appId: '1:754497084151:ios:d9bbbd473fbcb8151291f2',
    messagingSenderId: '754497084151',
    projectId: 'mikedcares-therapy-app',
    storageBucket: 'mikedcares-therapy-app.appspot.com',
    androidClientId: '754497084151-vf293poc2be2ri20gmg6fl63vgmr07qd.apps.googleusercontent.com',
    iosClientId: '754497084151-o5gg3pefe309gt740lcnndhb8tv905n1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mikedCare',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTO_ieYg5vriJjRFe1y31pbYt1nS5ppLI',
    appId: '1:754497084151:ios:d9bbbd473fbcb8151291f2',
    messagingSenderId: '754497084151',
    projectId: 'mikedcares-therapy-app',
    storageBucket: 'mikedcares-therapy-app.appspot.com',
    androidClientId: '754497084151-vf293poc2be2ri20gmg6fl63vgmr07qd.apps.googleusercontent.com',
    iosClientId: '754497084151-o5gg3pefe309gt740lcnndhb8tv905n1.apps.googleusercontent.com',
    iosBundleId: 'com.example.mikedCare',
  );
}
