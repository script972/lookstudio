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
    apiKey: 'AIzaSyDDsMO7Kq5Azo2WujyiWVjOIE40JO4OmcQ',
    appId: '1:737058307719:web:d40abf716f4de3cc9b0222',
    messagingSenderId: '737058307719',
    projectId: 'lookstudio-a459b',
    authDomain: 'lookstudio-a459b.firebaseapp.com',
    storageBucket: 'lookstudio-a459b.firebasestorage.app',
    measurementId: 'G-TXLXRTV1X0',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDIXmOwb881x15qyg-Law2jQ013wD8O_ck',
    appId: '1:737058307719:android:7bd440921d0791989b0222',
    messagingSenderId: '737058307719',
    projectId: 'lookstudio-a459b',
    storageBucket: 'lookstudio-a459b.firebasestorage.app',
  );
  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCd4HfDi25vBJ3Wy_UYTLX0kODVdpzW0s8',
    appId: '1:737058307719:ios:50e8b5df2655980f9b0222',
    messagingSenderId: '737058307719',
    projectId: 'lookstudio-a459b',
    storageBucket: 'lookstudio-a459b.firebasestorage.app',
    iosBundleId: 'com.lookstudio.app',
  );
}
