import 'package:flutter/material.dart';
import 'package:mage8/Model/Account.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/widgets/Customer_card.dart';
import 'package:mage8/widgets/Headlined_button.dart';
import 'package:mage8/widgets/White_appbar.dart';

class QueueDirect extends StatelessWidget {
  final Account account;
  const QueueDirect({required this.account});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar("", context),
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            color: success,
          ),
          Positioned(bottom: 0, left: 0, right: 0, child: callCustomer(context))
        ],
      ),
    );
  }

  Widget callCustomer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          CustomerCard(account: account, isList: false),
          HeadlinedButton(context, "HUBUNGI", () {})
        ],
      ),
    );
  }
}
