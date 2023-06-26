import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["X-Naver-Client-Id"] = "nl6ouHHQiZKnxA5p_ao0";
    options.headers["X-Naver-Client-Secret"] = "fyzyF0u3JL";
    super.onRequest(options, handler);
  }
}
