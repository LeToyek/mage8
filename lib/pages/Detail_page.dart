import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/Custom_Alert_dialog.dart';

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
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                width: double.infinity,
                height: 72,
                child: Row(
                  children: [
                    Container(
                      width: 72,
                      height: 72,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            vendorData.title,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                          Text("📍 ${vendorData.county} - ${vendorData.city}"),
                          Text(vendorData.description)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: midGrey),
                    borderRadius: BorderRadius.circular(8),
                    color: lightGrey),
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
