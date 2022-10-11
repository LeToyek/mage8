import 'package:flutter/material.dart';
import 'package:mage8/Model/Account.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/queue/Queue_direct.dart';

class CustomerCard extends StatelessWidget {
  final Account account;
  final bool isList;
  const CustomerCard({required this.account, required this.isList});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.red,
          backgroundImage: NetworkImage(account.imageURL),
        ),
        SizedBox(
          width: 21,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              account.name,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text("1.2 km")
          ],
        ),
        Spacer(),
        if (isList) ...[
          Icon(
            Icons.cancel_outlined,
            color: error,
            size: 32,
          ),
          SizedBox(
            width: 8,
          ),
          IconButton(
            color: success,
            icon: Icon(
              Icons.check_circle_outline_outlined,
              size: 32,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => QueueDirect(account: account)));
            },
          ),
        ] else
          const SizedBox.shrink(),
      ]),
    );
  }
}
