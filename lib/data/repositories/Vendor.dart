import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/static/Vendor.dart';
import 'package:mage8/Model/Vendors.dart';
import 'package:mage8/provider/dio_provider.dart';

final vendorRepositoryProvider = Provider<VendorRepository>((ref) {
  return VendorRepository(ref.read(dioProvider));
});

class VendorRepository {
  Dio _dio;
  VendorRepository(this._dio);

  Future<Either<Exception, Vendors>> getVendorDetail(String vendorID) async {
    try {
      final response = await _dio.get('/api/v1/vendors/${vendorID}');

      return Right(Vendors.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, Vendors>> getVendorProduct(String vendorID) async {
    try {
      final response = await _dio.get('/api/v1/vendors/${vendorID}/products');

      return Right(Vendors.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }

  Future<Either<Exception, List<Vendors>>> getNearestVendor() async {
    try {
      final response = await _dio.get('/api/v1/vendors/nearest');
      final vendors = response.data['data'] as List;

      final List<Vendors> result = vendors
          .map(
            (vendor) => Vendors.fromJson(vendor),
          )
          .toList();
      return Right(result);
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
