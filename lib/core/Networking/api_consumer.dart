abstract class ApiConsumer {
  Future get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
}
