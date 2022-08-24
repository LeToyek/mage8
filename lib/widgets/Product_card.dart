import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/constants/color.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat('#,##0', 'ID');
    ;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      height: 72,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 72,
              width: 72,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8), color: Colors.red),
              child: Image.network(
                product.imagePath,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      product.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: product.isAvailable
                              ? Theme.of(context).primaryColor
                              : midGrey),
                      child: Text(
                        product.isAvailable ? "Tersedia" : "Tidak Tersedia",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
                Spacer(),
                Text("Rp " + currencyFormatter.format(product.price),
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Theme.of(context).primaryColor))
              ],
            ),
          )
        ],
      ),
    );
  }
}
