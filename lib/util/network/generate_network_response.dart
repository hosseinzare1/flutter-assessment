import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

import '../error_handling/app_exception.dart';

Future<T> generateNetworkResponse<T>(T Function(dynamic data) jsonConverter,
    Future<Response<dynamic>> Function() request) async {
  Response<dynamic>? response;

  ///check internet
  if (await Connectivity().checkConnectivity() == ConnectivityResult.none) {
    throw NoInternetException();
  } else {
    await request().then((value) {
      response = value;
    }, onError: (obj, stackTree) {
      Logger().e(obj);
      switch (obj.runtimeType) {
        case DioException:
          response = (obj as DioException).response;
          break;
        case SocketException:
          throw NoInternetException();
        default:
          throw UndefinedException(obj.toString());
      }
    });

    ///generate response
    if (response != null) {
      var serverResponse = response!;
      switch (serverResponse.statusCode!) {
        case 200:
          try {
            T result = jsonConverter(serverResponse.data);
            return result;
          } catch (e) {
            Logger().e(
              "json convert error : ${serverResponse.realUri} \n ${serverResponse.data} ",
              error: e,
            );
            throw JsonConvertException(e.toString());
          }
        //User will see this errors
        case 400:
          //TODO implement error handling.
          String errors = "";
          throw BadRequestException(errors);
        case 401:
          throw UnauthorisedException();
        case 403:
          throw ForbiddenException();
        case 404:
          throw NotFoundException();
        case >= 500 && < 600:
          throw InternalServerErrorException();
        default:
          throw UndefinedException();
      }
    } else {
      throw UndefinedException();
    }
  }
}
