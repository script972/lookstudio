import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

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
    apiKey: 'AIzaSyAOvR0A9_Zss2Xlssdfp8Qpy1Vgc0PkwDU',
    appId: '1:111243311062:web:b185ed4418e641bc27d677',
    messagingSenderId: '111243311062',
    projectId: 'elevate-accounts',
    authDomain: 'elevate-accounts.firebaseapp.com',
    storageBucket: 'elevate-accounts.appspot.com',
    measurementId: 'G-H17MGQR9PE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBDQmN3T8-KYlhzgsjaSyo0_PZEE4PaunQ',
    appId: '1:111243311062:android:7cb17f84b4e1165227d677',
    messagingSenderId: '111243311062',
    projectId: 'elevate-accounts',
    storageBucket: 'elevate-accounts.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAOUVNFNSfICy1uszXlRs-GF-ZybNfHIp0',
    appId: '1:111243311062:ios:98bb9763270dc16327d677',
    messagingSenderId: '111243311062',
    projectId: 'elevate-accounts',
    storageBucket: 'elevate-accounts.appspot.com',
    androidClientId: '111243311062-gqf67i5n44ilkg0gcn2a418i2mfslf8r.apps.googleusercontent.com',
    iosClientId: '111243311062-hquhoqs523i3jk3ftao45rdv46g7o1nd.apps.googleusercontent.com',
    iosBundleId: 'com.elevateaccounts.mobile',
  );
}
