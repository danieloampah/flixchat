import 'dart:convert';

import 'package:http/http.dart';

mixin NetworkRequest {
  Future<dynamic> postRequest({
    required Client client,
    required Map<String, dynamic> body,
  }) async {
    final response = await client.post(
      url(path: '/oauth'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(body),
    );
    final decodedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      return decodedResponse;
    } else {
      throw Exception(decodedResponse['errors'][0]['message']);
    }
  }

  Uri url({required String path}) => Uri.http('38.242.201.143:8050', path);
}
