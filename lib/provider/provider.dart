import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/Account.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/Model/Vendor.dart';
import 'package:mage8/widgets/vendorTile.dart';

enum Status { ramai, sepi, normal }

final valueProvider = Provider<int>((ref) {
  return 36;
});

final accountProvider = Provider<Account>(
  (ref) {
    return Account(
        name: "John Doe",
        phone: "08xx-xxxx-xxxx",
        imageURL:
            "https://www.dailysia.com/wp-content/uploads/2021/08/Windah-Basudara-660x400.jpg");
  },
);

final exampleProvider = Provider<Vendor>((ref) {
  return Vendor(
      title: "Soto Lmaogan",
      description:
          "Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah",
      imageUrl:
          "https://assets.pikiran-rakyat.com/crop/0x508:821x1011/x/photo/2022/04/26/2747824482.jpg",
      status: Status.sepi,
      distance: 3.1,
      city: "Malang",
      county: "Singosari",
      products: [
        Product(
            name: "Bakso",
            price: 20000,
            isAvailable: true,
            imagePath:
                "https://cdn0-production-images-kly.akamaized.net/265KcigvIMcvoAN4XIRKjOT-aR0=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2763419/original/071857300_1553761217-shutterstock_1148354906.jpg"),
        Product(
            name: "Bakso",
            price: 200000,
            isAvailable: false,
            imagePath:
                "https://mmc.tirto.id/image/otf/1024x535/2019/07/13/bakso-istockphoto-copy.jpg"),
        Product(
            name: "Bakso",
            price: 3000,
            isAvailable: false,
            imagePath:
                "https://img-global.cpcdn.com/recipes/62bc0149e02866d8/1200x630cq70/photo.jpg"),
      ]);
});

const String messageDialog =
    "Panggilan anda akan terdaftar pada antrian. Tekan lanjut untuk melanjutkan, Tekan batal untuk membatalkan";
