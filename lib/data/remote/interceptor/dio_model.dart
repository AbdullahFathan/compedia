import 'package:dio/dio.dart';
import 'package:compedia/data/local/secure_storange/secure_storange_manager.dart';

class DioModel {
  Future<Dio> getDIO({
    Map<String, dynamic> headers = const {},
    int connectTimeout = 30000,
    int receiveTimeout = 30000,
  }) async {
    final dio = Dio(BaseOptions(
      connectTimeout: const Duration(milliseconds: 30000),
      receiveTimeout: const Duration(milliseconds: 30000),
      contentType: "application/json",
    ))
      ..interceptors.addAll([DioInterceptor()]);

    return dio;
  }
}

class DioInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authToken = await LocalSecureManager().readToken();

    if (authToken != null) {
      options.headers['Authorization'] = 'Bearer $authToken';
    }

    options.headers['Content-Type'] = 'application/json';

    return super.onRequest(options, handler);
  }
}
