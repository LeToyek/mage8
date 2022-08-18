import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Vendor.dart';
import 'package:mage8/widgets/vendorTile.dart';

enum Status { ramai, sepi, normal }

final valueProvider = Provider<int>((ref) {
  return 36;
});

final exampleProvider = Provider<Vendor>((ref) {
  return Vendor(
      title: "Soto",
      description: "Murah meriah muntah",
      imageUrl: "imageUrl",
      status: Status.ramai,
      distance: 3.1);
});
