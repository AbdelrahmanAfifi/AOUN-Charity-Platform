import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

abstract final class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError('AOUN Firebase web app is not registered.');
    }
    return switch (defaultTargetPlatform) {
      TargetPlatform.android => android,
      TargetPlatform.iOS => ios,
      _ => throw UnsupportedError('AOUN is configured for Android and iOS.'),
    };
  }

  static const android = FirebaseOptions(
    apiKey: 'AIzaSyA6HfjN6vgxogNmc599kL0Ep2oGVDbj86A',
    appId: '1:302060765717:android:af39e6b6734029ca1bc41c',
    messagingSenderId: '302060765717',
    projectId: 'aoun-charity-platform',
    storageBucket: 'aoun-charity-platform.firebasestorage.app',
  );

  static const ios = FirebaseOptions(
    apiKey: 'AIzaSyCIVpZiIonr_V-T6toxrOGSxBgGJvyimig',
    appId: '1:302060765717:ios:fa35b35944a1cba81bc41c',
    messagingSenderId: '302060765717',
    projectId: 'aoun-charity-platform',
    storageBucket: 'aoun-charity-platform.firebasestorage.app',
    iosBundleId: 'com.aoun.aoun',
  );
}
