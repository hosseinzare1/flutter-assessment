import '../../domain/model/error_entity.dart';
import 'app_exception.dart';

ErrorEntity exceptionToErrorEntity(Exception exception) {
  switch (exception.runtimeType) {
    case BadRequestException:
      return ErrorEntity(
          title: "خطای درخواست",
          description: exception.toString(),
          solution: "لطفا مجددا تلاش کنید.");

    case UnauthorisedException:
      return ErrorEntity(
          title: "توکن منقضی شده",
          description: "حضور در برنامه نیاز به تمدید دارد",
          solution: "لطفا دوباره وارد حساب کاربری خود شوید",
          exception: exception);

    case ForbiddenException:
      return ErrorEntity(
          title: "خطا",
          description: exception.toString(),
          solution: "کمی بعد مجددا تلاش کنید.");

    case NotFoundException:
      return ErrorEntity(
          title: "خطای درخواست",
          description: exception.toString(),
          solution: "کمی بعد مجددا تلاش کنید");

    case InternalServerErrorException:
      return const ErrorEntity(
          title: "خطای سرور",
          description: "سیستم با مشکل مواجه شده است.",
          solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید");

    case JsonConvertException:
      return ErrorEntity(
          title: "خطا",
          description: exception.toString(),
          solution: "کمی بعد مجددا تلاش کنید. ");

    case UndefinedException:
      return const ErrorEntity(
          title: "خطا",
          description: "مشکل نامشخصی به وجود آمده.",
          solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید");

    case NoInternetException:
      return const ErrorEntity(
          title: "خطای اتصال",
          description: "متاسفانه مشکلی در دریافت اطلاعات پیش آمده",
          solution:
              "لطفا اتصال اینترنتی خود را بررسی کنید و دوباره تلاش کنید ");

    default:
      return const ErrorEntity(
          title: "خطا",
          description: "مشکل نامشخصی به وجود آمده.",
          solution: "لطفا بعد از چند دقیقه دوباره تلاش کنید");
  }
}
