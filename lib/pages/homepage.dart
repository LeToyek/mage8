import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Account_page.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/Category_tile.dart';
import 'package:mage8/widgets/Search_app_bar.dart';
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
      appBar: SearchAppBar(context, "Cari PKL terdekat", () {}),
      body: SizedBox.expand(
          child: DraggableScrollableSheet(
              maxChildSize: 0.8,
              minChildSize: 0.12,
              initialChildSize: 0.25,
              builder: (context, ScrollController scrollController) {
                return Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromARGB(68, 0, 0, 0),
                              blurRadius: 2,
                              offset: Offset(0, -1))
                        ],
                        color: Theme.of(context).backgroundColor,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8))),
                    child: ListView(
                      controller: scrollController,
                      children: [
                        Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 24),
                            height: 6,
                            width: 64,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: lightGrey),
                          ),
                        ),
                        Consumer(builder: (context, ref, child) {
                          return SizedBox(
                              height: 32,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: ref.watch(categoryProvider).length,
                                  itemBuilder: (context, index) {
                                    final listCategory =
                                        ref.watch(categoryProvider);
                                    return CategoryTile(
                                        category: listCategory[index]);
                                  }));
                        }),
                        SizedBox(
                          height: 24,
                        ),
                        Consumer(builder: (context, ref, child) {
                          final vendorList = ref.watch(vendorListProvider);
                          return SizedBox(
                            child: ListView.builder(
                              itemCount: vendorList.length,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return VendorTile(vendor: vendorList[index]);
                              },
                            ),
                          );
                        })
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
