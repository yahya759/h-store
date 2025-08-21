import 'dart:async';
import 'package:flutter/material.dart';

class FullScreenAdSlider extends StatefulWidget {
  @override
  _FullScreenAdSliderState createState() => _FullScreenAdSliderState();
}

class _FullScreenAdSliderState extends State<FullScreenAdSlider> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> images = [
    " images/add_phone.png",
    " images/add_phone.png",
    " images/add_phone.png",
    " images/add_phone.png",
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 4), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 800),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: _pageController,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Stack(
          children: [
            Image.asset(
              "images/add_phone.png",
              fit: BoxFit.cover, // تغطي الشاشة كاملة
            ),
            Container(
              color: Colors.black.withOpacity(0.2), // فلتر خفيف
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(16),
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
