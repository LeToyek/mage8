import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Vendors.dart';
import 'package:mage8/data/repositories/Vendor.dart';

class VendorsNotifier extends StateNotifier<AsyncValue<List<Vendors>>> {
  VendorRepository _vendorRepository;

  VendorsNotifier(this._vendorRepository) : super(AsyncValue.loading());

  Future<void> loadData() async {
    final result = await _vendorRepository.getNearestVendor();

    result.fold((error) => state = AsyncValue.error(error),
        (data) => state = AsyncValue.data(data));
  }

  Future<void> loadVendorDetail(String id) async {
    final result = await _vendorRepository.getVendorDetail(id);

    result.fold((error) => state = AsyncValue.error(error),
        (data) => state = AsyncValue.data([data]));
  }

  Future<void> loadVendorProducts(String id) async {
    final result = await _vendorRepository.getVendorProduct(id);

    result.fold((error) => state = AsyncValue.error(error),
        (data) => state = AsyncValue.data([data]));
  }
}

final vendorListProvider =
    StateNotifierProvider<VendorsNotifier, AsyncValue<List<Vendors>>>((ref) {
  return VendorsNotifier(ref.read(vendorRepositoryProvider));
});
