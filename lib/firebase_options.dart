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
    apiKey: 'AIzaSyBJs8ETo5ngo5bs4dRPrGtd6nc1DO8WKXA',
    appId: '1:44693941662:web:72f36bc497ecdb5385fa8f',
    messagingSenderId: '44693941662',
    projectId: 'eos-chatting-48ee2',
    authDomain: 'eos-chatting-48ee2.firebaseapp.com',
    storageBucket: 'eos-chatting-48ee2.appspot.com',
    measurementId: 'G-T8N30WHT74',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQXgm4p77adhswnqo7oqs4id6bSijGFc4',
    appId: '1:44693941662:android:0576ef4758b04fce85fa8f',
    messagingSenderId: '44693941662',
    projectId: 'eos-chatting-48ee2',
    storageBucket: 'eos-chatting-48ee2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBLCn8wQ7FIV1NEJgifYU53blYtntB8DBk',
    appId: '1:44693941662:ios:8205448442ccc85f85fa8f',
    messagingSenderId: '44693941662',
    projectId: 'eos-chatting-48ee2',
    storageBucket: 'eos-chatting-48ee2.appspot.com',
    iosClientId: '44693941662-3t4c5l7ul9vi47ia94p2rr5kd70adhba.apps.googleusercontent.com',
    iosBundleId: 'com.eos.eosChatting',
  );
}
