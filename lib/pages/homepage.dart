import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/vendorTile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          leading: Padding(
            padding: const EdgeInsets.all(8),
            child: new Material(
              shape: new CircleBorder(),
            ),
          )),
      body: SizedBox.expand(
          child: DraggableScrollableSheet(
              maxChildSize: 0.8,
              minChildSize: 0.12,
              initialChildSize: 0.25,
              builder: (context, ScrollController scrollController) {
                return Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(8))),
                  child: ListView(
                    shrinkWrap: true,
                    controller: scrollController,
                    children: [
                      Center(
                        child: Container(
                          height: 6,
                          width: 64,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(32),
                              color: lightGrey),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      Consumer(
                        builder: (context, ref, child) {
                          final vendor = ref.watch(exampleProvider);
                          return VendorTile(vendor: vendor);
                        },
                      ),
                      Consumer(
                        builder: (context, ref, child) {
                          final value = ref.watch(valueProvider);
                          return Text(value.toString());
                        },
                      )
                    ],
                  ),
                );
              })),
    );
  }
}
