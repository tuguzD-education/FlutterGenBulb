import 'package:dio/dio.dart' as dio;

class IgdbApiClient {
  static const _baseUrl = "https://api.igdb.com/v4/";

  static const _apiToken = "SECRET";
  static const _clientId = "SECRET";

  final dioClient = dio.Dio(
    dio.BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        "Content-Type": "text/plain",
        "Authorization": "Bearer $_apiToken",
        "Client-ID": _clientId,
      }
    )
  );
}
