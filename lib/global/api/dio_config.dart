import 'package:dio/dio.dart';

class DioConfig {
  static final Dio _dio = Dio()
    ..options.baseUrl = "https://api.github.com"
    ..options.connectTimeout = const Duration(seconds: 30)
    ..options.receiveTimeout = const Duration(seconds: 30)
    ..options.headers["Accept"] = "*/*"
    ..interceptors.add(
      InterceptorsWrapper(
        onError: (DioException error, handler) async {
          print(error.message);
          return handler.next(error);
        },
      ),
    );

  static Dio load() => _dio;
}
