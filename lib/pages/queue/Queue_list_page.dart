import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mage8/constants/api.dart';
import 'package:mage8/data/repositories/Order.dart';
import 'package:mage8/provider/provider.dart';
import 'package:mage8/provider/queue_list_provider.dart';
import 'package:mage8/widgets/Customer_card.dart';
import 'package:mage8/widgets/White_appbar.dart';

class QueueListPage extends ConsumerWidget {
  const QueueListPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, ref) {
    final orders = ref.watch(queueListProvider);

    // return Scaffold(
    //     body: orders.when(
    //         data: (data) => ListView.builder(
    //               itemCount: data.length,
    //               shrinkWrap: true,
    //               itemBuilder: (context, index) {
    //                 return CustomerCard(account: data[index], isList: true);
    //               },
    //             ),
    //         error: (error, stackTrace) {
    //           return Text(error.toString());
    //         },
    //         loading: () => CircularProgressIndicator()));

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

  // return Scaffold(
  //   body: orders.when(data: (data) => ListView.builder(itemBuilder: itemBuilder, itemCount: ,data.length), error: error, loading: () => CircularProgressIndicator()),
  // )
}
