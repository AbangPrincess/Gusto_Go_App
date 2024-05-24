// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyCOOcnKeZj0IbPaEG4Rlgy8f3W2iM2jShE',
    appId: '1:673668407711:web:33e530974ed06d82e59daa',
    messagingSenderId: '673668407711',
    projectId: 'gusto-go-90583',
    authDomain: 'gusto-go-90583.firebaseapp.com',
    storageBucket: 'gusto-go-90583.appspot.com',
    measurementId: 'G-LDTGWTV3HT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBfyXFok2old9urhg6RU3yGBP9lu70ml3c',
    appId: '1:673668407711:android:9e0b5057e213fb77e59daa',
    messagingSenderId: '673668407711',
    projectId: 'gusto-go-90583',
    storageBucket: 'gusto-go-90583.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAuQEZC0Lz8ZG5yEe3JbB-5bwkz7lL2ktQ',
    appId: '1:673668407711:ios:a288148b53d87d85e59daa',
    messagingSenderId: '673668407711',
    projectId: 'gusto-go-90583',
    storageBucket: 'gusto-go-90583.appspot.com',
    iosClientId: '673668407711-rhkk9ohlgdc9asen254se2hdor5b2bel.apps.googleusercontent.com',
    iosBundleId: 'com.example.gustoGoAppFinal',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAuQEZC0Lz8ZG5yEe3JbB-5bwkz7lL2ktQ',
    appId: '1:673668407711:ios:a288148b53d87d85e59daa',
    messagingSenderId: '673668407711',
    projectId: 'gusto-go-90583',
    storageBucket: 'gusto-go-90583.appspot.com',
    iosClientId: '673668407711-rhkk9ohlgdc9asen254se2hdor5b2bel.apps.googleusercontent.com',
    iosBundleId: 'com.example.gustoGoAppFinal',
  );

}