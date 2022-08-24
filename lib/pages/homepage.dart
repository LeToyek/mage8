import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/Account_page.dart';
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
        leading: Container(
          margin: EdgeInsets.only(left: 24),
          child: InkWell(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const AccountPage())),
            child: const Material(
              shape: const CircleBorder(),
            ),
          ),
        ),
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.only(left: 16),
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Cari nama PKL terdekat",
                suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: midGrey,
                    ))),
          ),
        ),
      ),
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
                            height: 6,
                            width: 64,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                                color: lightGrey),
                          ),
                        ),
                        // Expanded(
                        //   child: ListView.builder(
                        //       scrollDirection: Axis.horizontal,
                        //       shrinkWrap: true,
                        //       itemCount: 5,
                        //       itemBuilder: (context, index) {
                        //         return Text('${index}');
                        //       }),
                        // ),
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
                            final vendor = ref.watch(exampleProvider);
                            return VendorTile(vendor: vendor);
                          },
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            final vendor = ref.watch(exampleProvider);
                            return VendorTile(vendor: vendor);
                          },
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            final vendor = ref.watch(exampleProvider);
                            return VendorTile(vendor: vendor);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              })),
    );
  }
}
