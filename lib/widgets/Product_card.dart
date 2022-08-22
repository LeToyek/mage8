import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/constants/color.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat.currency(locale: "ID");

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.name),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(32),
                        color: product.isAvailable
                            ? Theme.of(context).primaryColor
                            : midGrey),
                    child: Text(
                        product.isAvailable ? "Tersedia" : "Tidak Tersedia"),
                  )
                ],
              ),
              Text("Rp " + currencyFormatter.format(product.price))
            ],
          )
        ],
      ),
    );
  }
}
