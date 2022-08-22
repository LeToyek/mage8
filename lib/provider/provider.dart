import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/Model/Vendor.dart';
import 'package:mage8/widgets/vendorTile.dart';

enum Status { ramai, sepi, normal }

final valueProvider = Provider<int>((ref) {
  return 36;
});

final exampleProvider = Provider<Vendor>((ref) {
  return Vendor(
      title: "Soto Lmaogan",
      description:
          "Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah",
      imageUrl: "imageUrl",
      status: Status.ramai,
      distance: 3.1,
      city: "Malang",
      county: "Singosari",
      products: [
        Product(
            name: "Bakso",
            price: 2000,
            isAvailable: true,
            imagePath: "imagePath"),
        Product(
            name: "Bakso",
            price: 2000,
            isAvailable: false,
            imagePath: "imagePath"),
      ]);
});

const String messageDialog =
    "Panggilan anda akan terdaftar pada antrian. Tekan lanjut untuk melanjutkan, Tekan batal untuk membatalkan";
