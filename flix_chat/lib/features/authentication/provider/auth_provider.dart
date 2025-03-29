import 'package:flix_chat/features/authentication/repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthStates> {
  final AuthenticationRepository authenticationRepository;
  AuthNotifier({required this.authenticationRepository})
      : super(AuthStates.initial);

  void googleSignIn() async {
    state = AuthStates.loading;
    final response = await authenticationRepository.googleSign();
    response.fold((error) {
      state = AuthStates.error;
    }, (success) {
      state = AuthStates.success;
    });
  }

  void appleSignIn() async {
    state = AuthStates.loading;
    final response = await authenticationRepository.appleSignIn();
    response.fold((error) {
      state = AuthStates.error;
    }, (success) {
      state = AuthStates.success;
    });
  }
}

enum AuthStates {
  initial,
  loading,
  error,
  success,
}
