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
    apiKey: 'AIzaSyAPZI61xidwHXvXSpPaAC8CLPXLqAQbmMk',
    appId: '1:975909007038:web:27ad8480c443d8e692b8ef',
    messagingSenderId: '975909007038',
    projectId: 'messenger-database-8ec7e',
    authDomain: 'messenger-database-8ec7e.firebaseapp.com',
    storageBucket: 'messenger-database-8ec7e.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDn_ESNen1mppxh16PAWOFdWXN4HG9Bj1c',
    appId: '1:975909007038:android:21fdadb545b964b092b8ef',
    messagingSenderId: '975909007038',
    projectId: 'messenger-database-8ec7e',
    storageBucket: 'messenger-database-8ec7e.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA4cE0zXYrObh-A9L_NAnVpfOjxK2lsf5U',
    appId: '1:975909007038:ios:9e55428291098fe992b8ef',
    messagingSenderId: '975909007038',
    projectId: 'messenger-database-8ec7e',
    storageBucket: 'messenger-database-8ec7e.appspot.com',
    androidClientId: '975909007038-o4iu7gvjbcpmf253rbnftipm1e99bmbr.apps.googleusercontent.com',
    iosClientId: '975909007038-5t3ak3co37v0ilh9d1bhs388c1edthtf.apps.googleusercontent.com',
    iosBundleId: 'com.example.messenger',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA4cE0zXYrObh-A9L_NAnVpfOjxK2lsf5U',
    appId: '1:975909007038:ios:9e55428291098fe992b8ef',
    messagingSenderId: '975909007038',
    projectId: 'messenger-database-8ec7e',
    storageBucket: 'messenger-database-8ec7e.appspot.com',
    androidClientId: '975909007038-o4iu7gvjbcpmf253rbnftipm1e99bmbr.apps.googleusercontent.com',
    iosClientId: '975909007038-5t3ak3co37v0ilh9d1bhs388c1edthtf.apps.googleusercontent.com',
    iosBundleId: 'com.example.messenger',
  );
}