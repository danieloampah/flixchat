import 'package:flix_chat/features/authentication/repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  final AuthenticationRepository authenticationRepository;
  AuthNotifier({required this.authenticationRepository})
      : super(AuthState(message: '',state:AuthStatesEnum.initial ));

  void googleSignIn() async {
    state = AuthState(message: '',state:AuthStatesEnum.loading );
    final response = await authenticationRepository.googleSign();
    response.fold((error) {
  state =   AuthState(message: error,state:AuthStatesEnum.error );
    }, (success) {
     state = AuthState(message: 'Sign in successfully',state:AuthStatesEnum.success );
    });
  }

  void appleSignIn() async {
    state = AuthState(message: '',state:AuthStatesEnum.loading );
    final response = await authenticationRepository.appleSignIn();
    response.fold((error) {
      state =   AuthState(message: error,state:AuthStatesEnum.error );
    }, (success) {
        state =    AuthState(message: 'Sign in successfully',state:AuthStatesEnum.success );
    });
  }
}

enum AuthStatesEnum {
  initial,
  loading,
  error,
  success,
}

class AuthState {
  final AuthStatesEnum state;
  final String message;

  AuthState({required this.state, required this.message});
}
