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
    apiKey: 'AIzaSyCKfz41ov_vZ2s7jCE9U40CWcZi1G0ek8Q',
    appId: '1:952162103925:web:744947c18f95eb56c47e3c',
    messagingSenderId: '952162103925',
    projectId: 'tour-list-84457',
    authDomain: 'tour-list-84457.firebaseapp.com',
    storageBucket: 'tour-list-84457.appspot.com',
    measurementId: 'G-41KN8LMM3F',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA1CVIwWbi3cqWxB_rZjDvyClyRWIZtDK8',
    appId: '1:952162103925:android:87b05d635cef0ec7c47e3c',
    messagingSenderId: '952162103925',
    projectId: 'tour-list-84457',
    storageBucket: 'tour-list-84457.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDbuBLDavnT9T6hFu7X8G0Ytm0B1FyANkw',
    appId: '1:952162103925:ios:c37991f9ac92941dc47e3c',
    messagingSenderId: '952162103925',
    projectId: 'tour-list-84457',
    storageBucket: 'tour-list-84457.appspot.com',
    iosBundleId: 'com.example.tourList',
  );
}
