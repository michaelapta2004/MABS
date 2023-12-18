import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class LogInWithEmailAndPasswordFailure {
  final String message;

  const LogInWithEmailAndPasswordFailure([this.message = "Unknown error occurred"]);

  factory LogInWithEmailAndPasswordFailure.code(String code) {
    switch (code) {
      case 'invalid-password':
        return const LogInWithEmailAndPasswordFailure(
            'Password is not valid');
      case 'invalid-email':
        return const LogInWithEmailAndPasswordFailure('Email is not valid');
      default:
        return const LogInWithEmailAndPasswordFailure();
    }
  }
}
