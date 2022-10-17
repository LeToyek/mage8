import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Position.dart';
import 'package:mage8/data/repositories/Position.dart';

class PositionNotifier extends StateNotifier<AsyncValue<Position>> {
  PositionRepository _positionRepository;

  PositionNotifier(this._positionRepository) : super(AsyncLoading());

  Future<void> loadUserPosition(String id) async {
    final result = await _positionRepository.getUserPosition(id);

    result.fold((error) => state = AsyncValue.error(error),
        (value) => state = AsyncValue.data(value));
  }

  Future<void> updateUserPosition() async {
    final result = await _positionRepository.updateUserPosition();

    result.fold((error) => state = AsyncValue.error(error),
        (value) => AsyncValue.data(value));
  }
}
