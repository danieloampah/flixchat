import 'package:data_connection_checker_nulls/data_connection_checker_nulls.dart';

class NetworkChecker {
  String noInternetMessage = "No Internet Connection";

  final DataConnectionChecker dataConnectionChecker;

  NetworkChecker({required this.dataConnectionChecker});
  Future<bool> get hasConnection async =>
      await dataConnectionChecker.hasConnection;
}
