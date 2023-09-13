class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString() {
    return "$_prefix$_message";
  }
}

//400
class BadRequestException extends AppException {
  BadRequestException([message]) : super(message, "");
}

//401
class UnauthorisedException extends AppException {
  UnauthorisedException([message]) : super(message, "");
}

//403
class ForbiddenException extends AppException {
  ForbiddenException([message]) : super(message, "");
}

//404
class NotFoundException extends AppException {
  NotFoundException([message]) : super(message, "");
}

//500
class InternalServerErrorException extends AppException {
  InternalServerErrorException([String? message]) : super(message, "");
}

class JsonConvertException extends AppException {
  JsonConvertException([String? message]) : super(message, "");
}

class UndefinedException extends AppException {
  UndefinedException([String? message]) : super(message, "");
}

class NoInternetException extends AppException {
  NoInternetException([String? message]) : super(message, "");
}
