import '../../domain/entity/general/error_entity.dart';
import 'app_exception.dart';

ErrorEntity exceptionToErrorEntity(Exception exception) {
  switch (exception.runtimeType) {
    case BadRequestException:
      return ErrorEntity(
        title: "Bad request",
        description: exception.toString(),
        solution: "Please try again.",
      );

    case UnauthorisedException:
      return ErrorEntity(
        title: "Not authorized",
        description: "Your token has expired.",
        solution: "Please log in to your account again.",
        exception: exception,
      );

    case ForbiddenException:
      return ErrorEntity(
        title: "Forbidden",
        description: exception.toString(),
        solution: "Please Try again later.",
      );

    case NotFoundException:
      return ErrorEntity(
        title: "Not found",
        description: exception.toString(),
        solution: "Please Try again later.",
      );

    case InternalServerErrorException:
      return const ErrorEntity(
        title: "Server error",
        description: "The server has encountered a problem.",
        solution: "Please try again in a few minutes.",
      );

    case JsonConvertException:
      return ErrorEntity(
        title: "Data error",
        description: exception.toString(),
        solution: "Please Try again.",
      );

    case UndefinedException:
      return const ErrorEntity(
        title: "Failure",
        description: "Something went wrong.",
        solution: "Please try again in a few minutes.",
      );

    case NoInternetException:
      return const ErrorEntity(
        title: "Connection error",
        description: "There is a problem connecting to the server.",
        solution: "Please check your internet connection and try again.",
      );

    default:
      return const ErrorEntity(
        title: "Failure",
        description: "Something went wrong.",
        solution: "Please try again in a few minutes.",
      );
  }
}
