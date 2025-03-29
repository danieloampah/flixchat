import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';
import 'package:flix_chat/core/network/internet_connection_checker.dart';
import 'package:flix_chat/features/authentication/provider/auth_provider.dart';
import 'package:flix_chat/features/authentication/repository/authentication_repository.dart';
import 'package:flix_chat/features/authentication/services/authentication_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

final dataConnection = DataConnectionChecker();
final authServiceProvider = AuthenticationService(client: Client());
final authRepository = AuthenticationRepository(
  authenticationService: authServiceProvider,
  networkChecker: NetworkChecker(dataConnectionChecker: dataConnection),
);

final authenticationNotifier = StateNotifierProvider.autoDispose<AuthNotifier, AuthStates>(
  (ref) => AuthNotifier(authenticationRepository: authRepository),
);
