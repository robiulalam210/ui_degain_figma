import 'package:flutter/material.dart';

import 'list_carousel1.dart';
import 'list_carousel2.dart';
import 'list_carousel3.dart';

class PageViewDimo extends StatefulWidget {
  const PageViewDimo({Key? key}) : super(key: key);

  @override
  State<PageViewDimo> createState() => _PageViewDimoState();
}

class _PageViewDimoState extends State<PageViewDimo> {

  PageController _controller=PageController(
    initialPage: 0,
  );
  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          ListCarousel1(),
          ListCarousel2(),
          ListCarousel3(),
        ],
      ),
    );
  }
}
