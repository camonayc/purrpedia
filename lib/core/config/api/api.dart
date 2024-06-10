class Api {
  Api({required String baseUrl, required String apiVersion})
      : _baseUrl = baseUrl,
        _apiVersion = apiVersion;
  final String _baseUrl;
  final String _apiVersion;

  String get breeds => '$_baseUrl/$_apiVersion/breeds';
  String get images => '$_baseUrl/$_apiVersion/images';
}
