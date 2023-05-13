import 'package:dio/dio.dart';
import 'package:${{{name.snakeCase()}}}/data/preferences_data.dart';
import 'package:${{{name.snakeCase()}}}/network/api_list.dart';
import 'package:${{{name.snakeCase()}}}/utils/app_utils.dart';

class CustomInterceptor extends Interceptor {
  Dio? dio;

  CustomInterceptor({this.dio});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // print('REQUEST[${options.method}] => PATH: ${options.path}');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // print('RESPONSE[${response.statusCode}] => PATH: ${response.requestOptions.path}');
    super.onResponse(response, handler);
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async {
    // print('ERROR[${err.response?.statusCode}] => PATH: ${err.requestOptions.path}');
    if (err.response != null && _shouldRetry(err)) {
      
    } else {
      handler.next(err);
    }
  }

  bool _shouldRetry(DioError error) {
    return error.response!.statusCode == 401 ||
        error.response!.statusCode == 403;
  }
}
