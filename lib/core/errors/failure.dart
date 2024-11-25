import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure(super.message);

  factory ServerFailure.fromDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('BadCertificate with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          error.response!.statusCode,
          error.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer is canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection Error with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode != null) {
      switch (statusCode) {
        case 400:
          return ServerFailure(response['error']['message']);
        case 401:
          return ServerFailure(response['error']['message']);
        case 403:
          return ServerFailure(response['error']['message']);
        case 404:
          return ServerFailure('Your request not found, Please try later!');
        case 500:
          return ServerFailure('There is a problem with the server, Please try later!');
      }
    }
    return ServerFailure('There is a problem with the server, Please try later!');
  }
}

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class NetworkFailure extends Failure {
  NetworkFailure(super.message);
}
