import 'package:flutter_installer/src/app/utils/constants.dart';
import 'package:http/http.dart' as http;

class MyClient extends http.BaseClient {
  final http.Client _client;

  MyClient(this._client);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) async {
    request.headers['User-Agent'] = Constants.flutterInstallerUserAgent;
    return _client.send(request);
  }
}
