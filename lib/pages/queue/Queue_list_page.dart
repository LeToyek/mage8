import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/widgets/Customer_card.dart';
import 'package:mage8/widgets/White_appbar.dart';

class QueueListPage extends StatefulWidget {
  const QueueListPage({Key? key}) : super(key: key);

  @override
  State<QueueListPage> createState() => _QueueListPageState();
}

class _QueueListPageState extends State<QueueListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: WhiteAppBar("Antrian Pesanan", context),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer(builder: (context, ref, child) {
            var listCustomer = ref.watch(listAccProvider);
            return ListView.builder(
              itemCount: listCustomer.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustomerCard(
                  account: listCustomer[index],
                  isList: true,
                );
              },
            );
          }),
        ));
  }
}
