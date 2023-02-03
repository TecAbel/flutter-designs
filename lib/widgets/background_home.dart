import 'dart:math';

import 'package:flutter/material.dart';

class BackgroundHome extends StatelessWidget {
  const BackgroundHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const boxDecoration = BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [0.2, 0.5],
        colors: [Color(0xff2e305f), Color(0xff202333)],
      ),
    );

    return Stack(
      children: [
        Container(
          height: double.infinity,
          decoration: boxDecoration,
        ),
        const Positioned(
          top: -130,
          left: -40,
          child: _PinkBox(),
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5,
      child: Container(
        height: 360,
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            gradient: const LinearGradient(colors: [
              Color.fromRGBO(236, 98, 168, 1),
              Color.fromRGBO(251, 141, 172, 1),
            ])),
      ),
    );
  }
}
