import 'package:dio/dio.dart';

abstract class CoreDioFactory {
  Dio create();
}

class DefaultCoreDioFactory implements CoreDioFactory {
  static const _connectTimeout = Duration(minutes: 2);
  static const _sendTimeout = Duration(minutes: 2);
  static const _receiveTimeout = Duration(minutes: 2);
  static const _baseUrl = "https://run.mocky.io/v3";

  @override
  Dio create() {
    final options = _createOptions();
    var dio = Dio(options);
    return dio;
  }

  BaseOptions _createOptions() {
    return BaseOptions(
      baseUrl: _baseUrl,
      connectTimeout: _connectTimeout,
      receiveTimeout: _receiveTimeout,
      sendTimeout: _sendTimeout,
    );
  }
}
