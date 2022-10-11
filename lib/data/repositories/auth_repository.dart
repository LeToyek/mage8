import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/User.dart';
import 'package:mage8/provider/dio_provider.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.read(dioProvider));
});

class AuthRepository {
  final Dio _dio;

  AuthRepository(this._dio);

  Future<Either<Exception, String>> loginWithGoogle(
      String accessToken, String deviceName) async {
    try {
      final response = await _dio.post('/auth/google-sign-in', data: {
        'access_token': accessToken,
        'device_name': deviceName,
      });

      return Right(response.data['token']);
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, User>> currentUser() async {
    try {
      final response = await _dio.get('/auth/user');

      return Right(User.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, bool>> logout() async {
    try {
      await _dio.post('/auth/logout');

      return const Right(true);
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
