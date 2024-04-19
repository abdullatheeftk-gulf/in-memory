import 'package:firebase_auth/firebase_auth.dart';
import 'package:in_memory/app_constants/data_error/data_error.dart';
import 'package:in_memory/app_constants/log/log_functions.dart';
import 'package:in_memory/main.dart';

class FirebaseAuthRepository {
  // Firebase  email SignUp
  Future<dynamic> signUp(
      {required String email, required String password}) async {
    try {
      final userCredential = await firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      printDebug(userCredential.user);
      _sendVerificationEmail(userCredential.user);
      return "Success";
    } on FirebaseAuthException catch (e) {
      return DataError(errorMessage: e.message ?? "Firebase auth error");
    } catch (e) {
      return const DataError(errorMessage: "Firebase error message");
    }
  }

  // firebase signIn
  Future<dynamic> signIn({
    required String email,
    required String password,
  }) async {
    try {
      final userCredential = await firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      printDebug(userCredential.user);
      return "Success";
    } on FirebaseAuthException catch (e) {
      return DataError(errorMessage: e.message ?? "Firebase auth error");
    } catch (e) {
      return const DataError(errorMessage: "Firebase error message");
    }
  }

  Future<void> _sendVerificationEmail(User? user) async {
    await user?.sendEmailVerification();
  }

  // Sign Out
  Future<dynamic> signOut() async {
    try {
      await firebaseAuth.signOut();
      return "Success";
    } on FirebaseAuthException catch (e) {
      return DataError(errorMessage: e.message ?? "Firebase auth error");
    } catch (e) {
      return const DataError(errorMessage: "Firebase error message");
    }
  }

  // Send reset password
  Future<dynamic> resetPassword(String email) async {
    try {
      await firebaseAuth.sendPasswordResetEmail(email: email);
      printWarning("success");
      return "Success";
    } on FirebaseAuthException catch (e) {
      printError(e);
      return DataError(errorMessage: e.message ?? "Firebase auth error");
    } catch (e) {
      printError(e);
      return const DataError(errorMessage: "Firebase error message");
    }
  }


}
