import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/network_errors.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/services/authentication_service/authentication_service.dart';
import 'package:solution_starter/domain/entities/user.dart';

class AuthServiceFirebaseImplementation extends AuthenticationService {
  AuthServiceFirebaseImplementation({required auth.FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;
  final auth.FirebaseAuth _firebaseAuth;

  @override
  Future<NetworkResponse<User>> login(String email, String password) async {
    auth.UserCredential? credential;
    try {
      credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on auth.FirebaseAuthException catch (e) {
      return NetworkResponse.failure(UnauthorizedError(error: e));
    }
    final user = User(id: credential.credential?.providerId, email: email);
    return NetworkResponse.success(user);
  }

  @override
  Future<NetworkResponse<User>> register(String email, String password) async {
    auth.UserCredential? credential;

    try {
      credential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on auth.FirebaseAuthException catch (e) {
      return NetworkResponse.failure(UnauthorizedError(error: e));
    }

    final user = User(id: credential.credential?.providerId, email: email);
    return NetworkResponse.success(user);
  }

  @override
  Future<NetworkResponse<User>> googleLogin() async {
    GoogleSignInAccount? googleAccount;
    try {
      googleAccount = await GoogleSignIn().signIn();
    } catch (e) {
      return NetworkResponse.failure(UnauthorizedError(error: e));
    }
    final user = User(id: googleAccount?.id, email: googleAccount?.email);
    return NetworkResponse.success(user);
  }
}