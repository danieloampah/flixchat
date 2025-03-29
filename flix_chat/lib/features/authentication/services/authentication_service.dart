import 'package:flix_chat/core/mixin/network_request.dart';
import 'package:flix_chat/features/authentication/model/auth_response.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

class AuthenticationService with NetworkRequest {
  final Client client;

  AuthenticationService({required this.client});
  Future<Authorization> googleSignIn() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn(
        serverClientId:
            '361421735179-jjratvluiq4inafbm2833pmfrjpo9sll.apps.googleusercontent.com',
        clientId:
            '361421735179-jq2pbt08st712jf2s34tkoktlu2e8qj9.apps.googleusercontent.com',
        scopes: ['email', 'profile'],
      );
      GoogleSignInAccount? googleUser = await googleSignIn.signIn();
      final body = {
        'accountId': googleUser!.id,
        'email': googleUser.email,
        'avatar': '123',
        'notiToken': '',
      };
      await googleUser.authentication;
      final response = await postRequest(client: client, body: body);
      return Authorization.fromMap(response);
    } catch (e) {
      throw Exception('An error occurred');
    }
  }

  Future appleSignIn() async {
    final response = await SignInWithApple.getAppleIDCredential(scopes: [
      AppleIDAuthorizationScopes.email,
      AppleIDAuthorizationScopes.fullName
    ]);
    response;
  }

  Future signOut() async {}
}
