import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mage8/constants/api.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(kBaseOptions)
    ..interceptors.add(LogInterceptor(responseBody: true))
    ..interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        final token = await const FlutterSecureStorage().read(key: 'token');

        // add bearer token
        options.headers['Authorization'] =
            'Bearer $token'; // add bearer token to request header

        handler.next(options);
      },
    ));
});
