import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  const CardTable({super.key});
  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(children: [
          _SingleCard(
            title: 'Apps',
            icon: Icons.apps,
            color: Colors.blue,
          ),
          _SingleCard(
            title: 'Transport',
            icon: Icons.bus_alert,
            color: Colors.purple,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Shopping',
            icon: Icons.shopping_bag,
            color: Colors.pink,
          ),
          _SingleCard(
            title: 'Bills',
            icon: Icons.card_membership,
            color: Colors.amber,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Entertainment',
            icon: Icons.movie,
            color: Colors.blueGrey,
          ),
          _SingleCard(
            title: 'Grocery',
            icon: Icons.apple,
            color: Colors.green,
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            title: 'Entertainment',
            icon: Icons.movie,
            color: Colors.blueGrey,
          ),
          _SingleCard(
            title: 'Grocery',
            icon: Icons.apple,
            color: Colors.green,
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color color;
  const _SingleCard({
    required this.title,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return _CardBackground(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            radius: 40,
            child: Icon(
              icon,
              size: 50,
              color: Colors.white70,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: color, fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 190,
            width: 100,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(30)),
            child: child,
          ),
        ),
      ),
    );
  }
}
