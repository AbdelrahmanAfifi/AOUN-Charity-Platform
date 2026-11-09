import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import '../../firebase_options.dart';

abstract final class FirebaseService {
  static Future<bool> initialize() async {
    if (Firebase.apps.isEmpty) {
      try {
        await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        );
      } on FirebaseException catch (error) {
        // Allow the UI scaffold to start until platform Firebase files are added.
        debugPrint(
            'Firebase is not configured: ${error.message ?? error.code}');
        return false;
      }
    }
    return true;
  }
}
