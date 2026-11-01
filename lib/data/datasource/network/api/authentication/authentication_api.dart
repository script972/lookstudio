import 'package:lookstudio/domain/model/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';

import '../../../../entity/user_entity.dart';
import '../../exchange_models/action_errors.dart';
import '../../exchange_models/response.dart';
import 'authentication_api_interface.dart';

class AuthenticationApi implements IAuthenticationApi {
  AuthenticationApi({required auth.FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  final auth.FirebaseAuth _firebaseAuth;

  @override
  Future<NetworkResponse<UserModel>> login(String email, String password) =>
      _authenticate(
        email,
        () => _firebaseAuth.signInWithEmailAndPassword(email: email.trim(), password: password),
      );

  @override
  Future<NetworkResponse<UserModel>> register(String email, String password) =>
      _authenticate(
        email,
        () => _firebaseAuth.createUserWithEmailAndPassword(email: email.trim(), password: password),
      );

  Future<NetworkResponse<UserModel>> _authenticate(
    String email,
    Future<auth.UserCredential> Function() request,
  ) async {
    try {
      final credential = await request();
      final firebaseUser = credential.user;
      if (firebaseUser == null) {
        return ErrorResponse(UnexpectedError(error: 'Firebase returned no user'));
      }
      String? token;
      try {
        token = await firebaseUser.getIdToken();
      } catch (_) {
        // The uid is used as the token when the ID token is unavailable.
      }
      return SuccessResponse<UserModel>(
        UserModel(
          id: firebaseUser.uid,
          email: email.trim(),
          token: token,
          loginDate: DateTime.now(),
        ),
      );
    } on auth.FirebaseAuthException catch (e) {
      if (e.code == 'network-request-failed') {
        return ErrorResponse(ConnectionError(error: e));
      }
      return ErrorResponse(UnauthorizedError(error: e, code: e.code));
    } catch (e) {
      return ErrorResponse(UnexpectedError(error: e));
    }
  }

  @override
  Future<NetworkResponse<UserModel>> googleLogin() async {
    GoogleSignInAccount? googleAccount;
    try {
      final googleSignIn = GoogleSignIn.instance;
      await googleSignIn.initialize();
      googleAccount = await googleSignIn.authenticate();
    } on GoogleSignInException catch (e) {
      final cancelled = e.code == GoogleSignInExceptionCode.canceled;
      return ErrorResponse(UnauthorizedError(error: e, code: cancelled ? authCancelledCode : null));
    } catch (e) {
      return ErrorResponse(UnauthorizedError(error: e));
    }
    final account = googleAccount;
    if (account == null || account.id.isEmpty) {
      return ErrorResponse(UnexpectedError(error: 'Google returned no account'));
    }
    final idToken = account.authentication.idToken;
    if (idToken == null) {
      return ErrorResponse(UnexpectedError(error: 'Google returned no ID token'));
    }
    return _authenticate(
      account.email,
      () => _firebaseAuth.signInWithCredential(auth.GoogleAuthProvider.credential(idToken: idToken)),
    );
  }
}
