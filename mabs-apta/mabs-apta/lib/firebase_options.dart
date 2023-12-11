import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAnLoMi7io89eLTnD9E8w44nF7WWisOgXw',
    appId: '1:203417021844:android:5f7918c76816ec39fd7381',
    messagingSenderId: '203417021844',
    projectId: 'mabs-c5276',
    storageBucket: 'mabs-c5276.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC_RfmVEwbIofzJRuhAjvsnuRCF1ZkSTdM',
    appId: '1:203417021844:ios:2ffc7eb48c1603b0fd7381',
    messagingSenderId: '203417021844',
    projectId: 'mabs-c5276',
    storageBucket: 'mabs-c5276.appspot.com',
    iosBundleId: 'com.mabs.app',
  );
}

class FirestoreService {
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<void> initializeFirestore() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
  }

  static Future<void> storeDataInFirestore(String data) async {
    try {
      CollectionReference collection = _firestore.collection('akuns');

      await collection.add({
        'dataField': data,
      });

    } catch (e) {
      print("Error storing data: $e");
    }
  }
}

class AuthService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<User?> registerUser(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;
      return user;
    } catch (e) {
      print("Error registering user: $e");
      return null;
    }
  }
}