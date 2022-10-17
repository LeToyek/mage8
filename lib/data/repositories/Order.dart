import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Order.dart';
import 'package:mage8/provider/dio_provider.dart';

final orderRepositoryProvider = Provider<OrderRepository>((ref) {
  return OrderRepository(ref.read(dioProvider));
});

class OrderRepository {
  Dio _dio;
  OrderRepository(this._dio);
  Future<Either<Exception, List<Orders>>> getAllOrders() async {
    try {
      final response = await _dio.get('/api/v1/orders');

      final List data = response.data['data'] as List;
      final List<Orders> orders =
          data.map((order) => Orders.fromJson(order)).toList();

      return Right(orders);
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
