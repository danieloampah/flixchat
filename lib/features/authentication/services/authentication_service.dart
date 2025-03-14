import 'package:flix_chat/features/authentication/model/auth_response.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthenticationService {
  Future<AuthResponse?> googleSignIn() async {
    GoogleSignIn googleSignIn = GoogleSignIn(
      clientId: '',
      serverClientId: '',
      scopes: ['email', 'profile'],
    );
    GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser != null) {
      return AuthResponse(
          email: googleUser.email,
          id: googleUser.id,
          displayName: googleUser.displayName ?? '',
          photoUrl: googleUser.photoUrl ?? '');
    }
    return null;
  }

  Future appleSignIn() async {

    final response = await  SignInWithApple.getAppleIDCredential(scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName
    ]);
    response;
  }
  Future signOut() async {}
}
