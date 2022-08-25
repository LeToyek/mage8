import 'package:flutter/material.dart';
import 'package:mage8/Model/Board.dart';
import 'package:mage8/constants/color.dart';
import 'package:mage8/pages/register.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/Onboard_tile.dart';

class OnBoardPage extends StatefulWidget {
  @override
  State<OnBoardPage> createState() => _OnBoardPageState();
}

class _OnBoardPageState extends State<OnBoardPage> {
  final List<OnBoard> _listObject = [
    OnBoard(
        img: "assets/images/search.svg", title: "sadas", description: "asdasd"),
    OnBoard(
        img: "assets/images/call.svg",
        title: "Cari PKL di sekitarmu",
        description: "Dengan fitur GPS, kamu dapat menemukan PKL di sekitarmu"),
    OnBoard(
      img: "assets/images/purchase.svg",
      title: "Cari PKL di sekitarmu",
      description: "Dengan fitur GPS, kamu dapat menemukan PKL di sekitarmu",
    )
  ];
  late PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  bool isUsed = false;
  bool isShowPrev = false;
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    if (value >= 1) {
                      isShowPrev = true;
                      if (value == 2) {
                        isFinished = true;
                      } else {
                        isFinished = false;
                      }
                    } else {
                      isShowPrev = false;
                    }
                  });
                },
                controller: _pageController,
                itemCount: _listObject.length,
                itemBuilder: (context, index) {
                  return OnBoardObject(
                    onBoard: _listObject[index],
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  activeDotColor: Theme.of(context).primaryColor,
                  spacing: 6,
                  dotColor: lightGrey,
                  dotHeight: 5,
                  dotWidth: 5),
              onDotClicked: (index) {
                _pageController.animateToPage(index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.ease);
              },
            ),
            Container(
              width: double.infinity,
              child: Row(
                children: [
                  isShowPrev
                      ? ElevatedButton(
                          onPressed: () {
                            _pageController.previousPage(
                                duration: const Duration(microseconds: 300),
                                curve: Curves.ease);
                          },
                          child: const Text("Prev"),
                          style: ElevatedButton.styleFrom(primary: midGrey),
                        )
                      : Container(),
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        !isFinished
                            ? _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.ease)
                            : Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterPage()));
                      },
                      child: Text(isFinished ? "Finish" : "next"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
