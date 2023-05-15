abstract class Endpoint {
  String endpointBaseUrlWithVersion({
    required String path,
    String version = 'v2',
  }) {
    return '/$version/$path';
  }
}
