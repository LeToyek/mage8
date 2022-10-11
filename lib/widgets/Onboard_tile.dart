import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/Model/Board.dart';
import 'package:mage8/constants/color.dart';

class OnBoardObject extends StatelessWidget {
  const OnBoardObject({required this.onBoard});

  final OnBoard onBoard;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        SvgPicture.asset(
          onBoard.img,
          height: 214,
        ),
        const SizedBox(
          height: 72,
        ),
        Text(onBoard.title, style: Theme.of(context).textTheme.headline6!),
        Container(
          width: 200,
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            onBoard.description,
            textAlign: TextAlign.center,
            style: const TextStyle(color: midGrey),
          ),
        ),
        Spacer()
      ],
    );
  }
}
