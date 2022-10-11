import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mage8/Model/Position.dart';

class User {
  Dio _dio;
  User(this._dio);
  Future<Either<Exception, Position>> getUserPosition(String userID) async {
    try {
      final response = await _dio.get('/api/v1/positions/${userID}');

      return Right(Position.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, Position>> updateUserPosition(String userID) async {
    try {
      final response = await _dio.post('/api/v1/positions/update');

      return Right(Position.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
