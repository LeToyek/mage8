import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Position.dart';
import 'package:mage8/provider/dio_provider.dart';

final vendorRepositoryProvider = Provider<PositionRepository>((ref) {
  return PositionRepository(ref.read(dioProvider));
});

class PositionRepository {
  Dio _dio;
  PositionRepository(this._dio);
  Future<Either<Exception, Position>> getUserPosition(String userID) async {
    try {
      final response = await _dio.get('/api/v1/positions/${userID}');

      return Right(Position.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, Position>> updateUserPosition() async {
    try {
      final response = await _dio.post('/api/v1/positions/update');

      return Right(Position.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
