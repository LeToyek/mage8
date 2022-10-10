import 'package:flutter/material.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/widgets/White_appbar.dart';

class DirectionPage extends StatelessWidget {
  final String venName;
  const DirectionPage({required this.venName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: WhiteAppBar(venName, context),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: error,
          )
        ],
      ),
    );
  }
}
