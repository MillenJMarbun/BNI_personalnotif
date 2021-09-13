import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/AddEnrollPageThree.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/AddEnrollPageTwo.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/AddEnrollPageone.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class enrollHome extends StatefulWidget {
  @override
  _enrollHomeState createState() => _enrollHomeState();
}

class _enrollHomeState extends State<enrollHome> {
  PageController _pageController = new PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Stack(
          children: [
            PageView(
              controller: _pageController,
              children: [
                AddEnrollPage(),
                EnrollPageTwo(),
                EnrollPageThree(),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 85),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller: _pageController,
                        count: 3,
                        effect: SwapEffect(
                          activeDotColor:  Colors.deepOrange,
                          spacing:  4.0,
                          dotWidth:  10.0,
                          dotHeight:  10.0,
                        ),
                        onDotClicked: (index) => _pageController.animateToPage(index,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceOut
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        )
    );
  }
}
