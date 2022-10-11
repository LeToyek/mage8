import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/vendor/Tambah_product.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/Headlined_button.dart';
import 'package:mage8/widgets/Search_app_bar.dart';
import 'package:mage8/widgets/Switchable_product_card.dart';

class ProductPage extends StatefulWidget {
  final List<Product> productList;
  ProductPage({required this.productList});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: SearchAppBar(context, "Cari Produk", () {}),
        body: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(16),
          child: Stack(children: [
            widget.productList.length == 0 || widget.productList == null
                ? Container(
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/icons/ramen.svg"),
                        Text(
                          "Belum ada produk",
                          style: Theme.of(context).textTheme.headlineSmall,
                        )
                      ],
                    ),
                  )
                : ListView.builder(
                    shrinkWrap: true,
                    itemCount: widget.productList.length,
                    itemBuilder: (context, index) {
                      return SwitchableProductCard(
                          product: widget.productList[index]);
                    }),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: HeadlinedButton(context, "TAMBAH", () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => AddProduct()));
                }))
          ]),
        ));
  }
}
