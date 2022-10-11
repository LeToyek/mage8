import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:mage8/Model/Vendor.dart';
import 'package:mage8/Model/Vendors.dart';

class VendorService {
  Dio _dio;
  VendorService(this._dio);

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

  Future<Either<Exception, Vendors>> getNearestVendor() async {
    try {
      final response = await _dio.get('/api/v1/vendors/nearest');

      return Right(Vendors.fromJson(response.data['data']));
    } on DioError catch (e) {
      return Left(Exception(e.message));
    }
  }
}
