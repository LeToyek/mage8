import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Order.dart';
import 'package:mage8/data/repositories/Order.dart';
import 'package:mage8/provider/dio_provider.dart';

class QueueListNotifier extends StateNotifier<AsyncValue<List<Orders>>> {
  OrderRepository _repository;

  QueueListNotifier(this._repository) : super(AsyncValue.loading());

  Future<void> loadData() async {
    final result = await _repository.getAllOrders();

    result.fold((error) => state = AsyncValue.error(error),
        (data) => state = AsyncValue.data(data));
  }
}

final queueListProvider =
    StateNotifierProvider<QueueListNotifier, AsyncValue<List<Orders>>>((ref) {
  return QueueListNotifier(ref.read(orderRepositoryProvider));
});
