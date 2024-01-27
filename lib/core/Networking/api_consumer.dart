abstract class ApiConsumer {
  Future <dynamic> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future <dynamic> delete(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future <dynamic> patch(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
  Future <dynamic> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameter,
  });
}
