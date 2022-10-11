import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Order.dart';
import 'package:mage8/provider/dio_provider.dart';

final authRepositoryProvider = Provider<OrderService>((ref) {
  return OrderService(ref.read(dioProvider));
});

class OrderService {
  Dio _dio;
  OrderService(this._dio);
  Future<Either<Exception, Orders>> getAllOrders() async {
    try {
      final response = await _dio.get('/api/v1/orders');

      return Right(Orders.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, Map<String, dynamic>>> cancelOrder(
      String orderID) async {
    try {
      final response = await _dio.post('/api/v1/orders/${orderID}/cancel');

      return Right({"message": response.data});
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
