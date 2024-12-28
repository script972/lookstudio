import 'package:aircode_starter/domain/model/user_model.dart';
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
  Future<NetworkResponse<UserModel>> login(String email, String password) async {
    auth.UserCredential? credential;
    try {
      credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on auth.FirebaseAuthException catch (e) {
      return ErrorResponse(UnauthorizedError(error: e));
    }
    final user = UserModel(
      id: credential.credential?.providerId ?? '',
      email: email,
      loginDate: DateTime.now(),
    );
    return SuccessResponse<UserModel>(user);
  }

  @override
  Future<NetworkResponse<UserModel>> register(String email, String password) async {
    auth.UserCredential? credential;

    try {
      credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on auth.FirebaseAuthException catch (e) {
      return ErrorResponse(UnauthorizedError(error: e));
    }

    final user = UserModel(
      id: credential.credential?.providerId ?? '',
      email: email,
      loginDate: DateTime.now(),
    );
    return SuccessResponse<UserModel>(user);
  }

  @override
  Future<NetworkResponse<UserModel>> googleLogin() async {
    GoogleSignInAccount? googleAccount;
    try {
      googleAccount = await GoogleSignIn().signIn();
    } catch (e) {
      return ErrorResponse(UnauthorizedError(error: e));
    }
    final user = UserModel(
      id: googleAccount?.id ?? '',
      email: googleAccount?.email,
      loginDate: DateTime.now(),
    );
    return SuccessResponse<UserModel>(user);
  }
}