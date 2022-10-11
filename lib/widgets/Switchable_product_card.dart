import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mage8/Model/Product.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/vendor/Edit_product.dart';

class SwitchableProductCard extends StatefulWidget {
  final Product product;

  SwitchableProductCard({required this.product});

  @override
  State<SwitchableProductCard> createState() => _SwitchableProductCardState();
}

class _SwitchableProductCardState extends State<SwitchableProductCard> {
  bool isOn = true;
  @override
  Widget build(BuildContext context) {
    final currencyFormatter = NumberFormat('#,##0', 'ID');
    ;

    return InkWell(
      onLongPress: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => EditProduct(
                    product: widget.product,
                  ))),
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: 72,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Container(
                height: 72,
                width: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: Colors.red),
                child: Image.network(
                  widget.product.imagePath!,
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
                  Text(
                    widget.product.name!,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Spacer(),
                  Text("Rp " + currencyFormatter.format(widget.product.price),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: onBackground))
                ],
              ),
            ),
            CupertinoSwitch(
                value: isOn,
                activeColor: Theme.of(context).primaryColor,
                onChanged: (bool value) {
                  setState(() {
                    isOn = value;
                  });
                })
          ],
        ),
      ),
    );
  }
}
