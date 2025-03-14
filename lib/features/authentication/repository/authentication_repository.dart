import 'package:flix_chat/core/network/internet_connection_checker.dart';
import 'package:flix_chat/core/typedef/typdef.dart';
import 'package:flix_chat/features/authentication/model/auth_response.dart';
import 'package:flix_chat/features/authentication/services/authentication_service.dart';
import 'package:fpdart/fpdart.dart';

class AuthenticationRepository {
  final AuthenticationService authenticationService;
  final NetworkChecker networkChecker;

  AuthenticationRepository({
    required this.authenticationService,
    required this.networkChecker,
  });

  FutureEither<AuthResponse?> googleSign() async {
    try {
      final response = await authenticationService.googleSignIn();
      return Right(response);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
