class ApiErrorModel {
  final String status;
  final String message;
  final String stack;
  final ErrorDetailsModel error;

  ApiErrorModel(
      {required this.status,
      required this.message,
      required this.stack,
      required this.error});
  factory ApiErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ApiErrorModel(
        status: jsonData['status'],
        message: jsonData['message'],
        stack: jsonData['stack'],
        error: ErrorDetailsModel.fromJson(jsonData['error']));
  }
}

class ErrorDetailsModel {
  final int statusCode;
  final String status;
  final bool isOperational;

  ErrorDetailsModel(
      {required this.statusCode,
      required this.status,
      required this.isOperational});
  factory ErrorDetailsModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorDetailsModel(
        statusCode: jsonData['statusCode'],
        status: jsonData['status'],
        isOperational: jsonData['isOperational']);
  }
}
