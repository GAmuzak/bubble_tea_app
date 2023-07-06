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
    apiKey: 'AIzaSyC6jGr5hF6FV2ZBa5yT7dsxmaSXG9lWQss',
    appId: '1:462198155468:web:364f44299618f3d4ccba69',
    messagingSenderId: '462198155468',
    projectId: 'bobaauth',
    authDomain: 'bobaauth.firebaseapp.com',
    storageBucket: 'bobaauth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAYLYVkRORb4S2hO67b8wGqr22Npb8o8rc',
    appId: '1:462198155468:android:73f5f5ff557c108bccba69',
    messagingSenderId: '462198155468',
    projectId: 'bobaauth',
    storageBucket: 'bobaauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDzRkPkWMKB7g_sWqd6tzY1Pg5m_GhM6Uk',
    appId: '1:462198155468:ios:cd946c95f383d122ccba69',
    messagingSenderId: '462198155468',
    projectId: 'bobaauth',
    storageBucket: 'bobaauth.appspot.com',
    iosClientId: '462198155468-34ed9fn7hov9sg7i92bb5uo0uem4dgcm.apps.googleusercontent.com',
    iosBundleId: 'com.example.bubbleTeaApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDzRkPkWMKB7g_sWqd6tzY1Pg5m_GhM6Uk',
    appId: '1:462198155468:ios:bfbd8c15ea53339dccba69',
    messagingSenderId: '462198155468',
    projectId: 'bobaauth',
    storageBucket: 'bobaauth.appspot.com',
    iosClientId: '462198155468-9jiagebt3fntqf8fm8a9tpm79qfjb0bn.apps.googleusercontent.com',
    iosBundleId: 'com.example.bubbleTeaApp.RunnerTests',
  );
}