import 'package:dio/dio.dart';
import 'package:${{{name.snakeCase()}}}/data/preferences_data.dart';
import 'package:${{{name.snakeCase()}}}/network/api_list.dart';
import 'package:${{{name.snakeCase()}}}/network/custom_interceptor.dart';
import 'package:${{{name.snakeCase()}}}/network/karnival_repository.dart';

class {{name.pascalCase()}}RepoImpl implements {{name.pascalCase()}}Repository {
  final Dio _dio =
      Dio(BaseOptions(connectTimeout: 20 * 1000, receiveTimeout: 60 * 1000));

  KarnivalRepoImpl() {
    _dio.interceptors.clear();
    _dio.interceptors.add(CustomInterceptor(dio: _dio));
    if (!ApiList.isProduction) {
      _dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
      ));
    }
  }


}
