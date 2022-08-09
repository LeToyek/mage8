import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mage8/constants/color.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
        description: "Dengan fitur GPS, kamu dapat menemukan PKL di sekitarmu")
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
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
                  const Spacer(),
                  ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                        // _pageController.page = 1;
                      },
                      child: const Text("next"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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

class OnBoard {
  String img, title, description;
  OnBoard({required this.img, required this.title, required this.description});
}
