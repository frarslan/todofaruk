import 'package:dio/dio.dart';

class DioClient {
  DioClient()
      : dio = Dio(BaseOptions(
          baseUrl: 'https://api-nodejs-todolist.herokuapp.com/',
        ))
          ..interceptors.add(ErrorInterceptor());

  late final Dio dio;
}

class ErrorInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    print('error: $err');
    super.onError(err, handler);
  }
}
