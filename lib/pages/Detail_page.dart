import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/Custom_Alert_dialog.dart';
import 'package:mage8/widgets/Product_card.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          )),
      body: Consumer(
        builder: (context, ref, child) {
          final vendorData = ref.watch(exampleProvider);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 72,
                        color: Colors.red,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              vendorData.title,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                            Text(
                                "📍 ${vendorData.county} - ${vendorData.city}"),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(vendorData.description)
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 24),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: midGrey),
                            borderRadius: BorderRadius.circular(8),
                            color: lightGrey),
                      ),
                      ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: vendorData.products.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            final productList = vendorData.products;
                            return ProductCard(
                              product: productList[index],
                            );
                          })
                    ],
                  ),
                ),
              ),
              const Spacer(),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        'assets/icons/interface.svg',
                        color: Colors.white,
                        height: 24,
                      ),
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 16),
                          primary: midGrey),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (_) => CustomAlertDialog());
                      },
                      child: Text(
                        "PANGGIL KE LOKASI",
                        style: TextStyle(fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(16),
                      ),
                    )
                  ],
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
