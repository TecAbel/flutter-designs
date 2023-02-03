import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.5, 0.5],
        colors: [
          Color(0XFF7aeccb),
          Color(0XFF55bfd8),
        ],
      ),
    );

    return Scaffold(
      backgroundColor: const Color(0XFF55bfd8),
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            Page1(),
            PageButton(),
          ],
        ),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        BackGroundScroll(),
        MainContent(),
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text(
            '11 °',
            style: textStyle,
          ),
          const Text(
            'Miércoles',
            style: textStyle,
          ),
          Expanded(
            child: Container(),
          ),
          const Icon(
            Icons.expand_more,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class BackGroundScroll extends StatelessWidget {
  const BackGroundScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF55bfd8),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: const Image(image: AssetImage('assets/scroll-1.png')),
    );
  }
}

class PageButton extends StatelessWidget {
  const PageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF55bfd8),
      child: Center(
        child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: const Color(0XFF0098FA),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5)),
          onPressed: () {},
          child: const Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
