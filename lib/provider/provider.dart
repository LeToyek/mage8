import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/Model/static/Account.dart';
import 'package:mage8/Model/static/Category.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/Model/static/Vendor.dart';
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
final listAccProvider = Provider<List<Account>>(
  (ref) {
    return [
      Account(
          name: "Windah",
          phone: "0129301239",
          imageURL:
              "https://www.dailysia.com/wp-content/uploads/2021/08/Windah-Basudara-660x400.jpg"),
      Account(
          name: "Basudara",
          phone: "0129301239",
          imageURL:
              "https://www.dailysia.com/wp-content/uploads/2021/08/Windah-Basudara-660x400.jpg"),
      Account(
          name: "Bernard",
          phone: "0129301239",
          imageURL:
              "https://www.dailysia.com/wp-content/uploads/2021/08/Windah-Basudara-660x400.jpg"),
    ];
  },
);

final categoryProvider = Provider<List<Category>>((ref) {
  return [
    Category(name: "Mi", icon: "🍜", color: "00ADB5"),
    Category(name: "Sup", icon: "🍲", color: "EE2737"),
    Category(name: "Bakso", icon: "🍲", color: "F0BB01")
  ];
});

final vendorListProvider = Provider<List<Vendor>>((ref) {
  return [
    Vendor(
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
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 20000,
              isAvailable: true,
              imagePath:
                  "https://cdn0-production-images-kly.akamaized.net/265KcigvIMcvoAN4XIRKjOT-aR0=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2763419/original/071857300_1553761217-shutterstock_1148354906.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 200000,
              isAvailable: false,
              imagePath:
                  "https://mmc.tirto.id/image/otf/1024x535/2019/07/13/bakso-istockphoto-copy.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 3000,
              isAvailable: false,
              imagePath:
                  "https://img-global.cpcdn.com/recipes/62bc0149e02866d8/1200x630cq70/photo.jpg"),
        ]),
    Vendor(
        title: "Mie Aceh",
        description:
            "Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah",
        imageUrl:
            "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2021/11/02/3111261266.jpg",
        status: Status.ramai,
        distance: 3.1,
        city: "Malang",
        county: "Singosari",
        products: [
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 20000,
              isAvailable: true,
              imagePath:
                  "https://cdn0-production-images-kly.akamaized.net/265KcigvIMcvoAN4XIRKjOT-aR0=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2763419/original/071857300_1553761217-shutterstock_1148354906.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 200000,
              isAvailable: false,
              imagePath:
                  "https://mmc.tirto.id/image/otf/1024x535/2019/07/13/bakso-istockphoto-copy.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 3000,
              isAvailable: false,
              imagePath:
                  "https://img-global.cpcdn.com/recipes/62bc0149e02866d8/1200x630cq70/photo.jpg"),
        ]),
    Vendor(
        title: "Nasi Goreng Bang Alex",
        description:
            "Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah Murah meriah muntah",
        imageUrl:
            "https://cdn0-production-images-kly.akamaized.net/xDdS1k6neUXJAM802YbCU8HOZgE=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/4018264/original/019930600_1652166761-american-shrimp-fried-rice-served-with-chili-fish-sauce-thai-food__1_.jpg",
        status: Status.normal,
        distance: 3.1,
        city: "Malang",
        county: "Singosari",
        products: [
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 20000,
              isAvailable: true,
              imagePath:
                  "https://cdn0-production-images-kly.akamaized.net/265KcigvIMcvoAN4XIRKjOT-aR0=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2763419/original/071857300_1553761217-shutterstock_1148354906.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 200000,
              isAvailable: false,
              imagePath:
                  "https://mmc.tirto.id/image/otf/1024x535/2019/07/13/bakso-istockphoto-copy.jpg"),
          Product(
              id: 1,
              vendorId: 2,
              name: "Bakso",
              price: 3000,
              isAvailable: false,
              imagePath:
                  "https://img-global.cpcdn.com/recipes/62bc0149e02866d8/1200x630cq70/photo.jpg"),
        ])
  ];
});

const String messageDialog =
    "Panggilan anda akan terdaftar pada antrian. Tekan lanjut untuk melanjutkan, Tekan batal untuk membatalkan";
