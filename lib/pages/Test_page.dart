import 'package:flutter/material.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/widgets/Switchable_product_card.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("TEST"),
        ),
        body: SwitchableProductCard(
          product: Product(
              id: 2,
              vendorId: 3,
              name: "Bakso",
              price: 20000,
              isAvailable: true,
              imagePath:
                  "https://cdn0-production-images-kly.akamaized.net/265KcigvIMcvoAN4XIRKjOT-aR0=/1200x675/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/2763419/original/071857300_1553761217-shutterstock_1148354906.jpg"),
        ));
  }
}
