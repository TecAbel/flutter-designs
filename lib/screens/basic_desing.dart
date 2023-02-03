import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://wallpapercave.com/wp/wp3556724.jpg'),
          ),
          // title section
          TitleLandscape(),
          ButtonSection()
        ],
      ),
    );
  }
}

class TitleLandscape extends StatelessWidget {
  const TitleLandscape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Lake view',
                textAlign: TextAlign.left,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Nordic lake view',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.star,
                color: Colors.red,
              ),
              Text('41')
            ],
          )
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(
            icon: Icons.call,
            textBtn: 'CALL',
          ),
          CustomButton(
            icon: Icons.route,
            textBtn: 'ROUTE',
          ),
          CustomButton(
            icon: Icons.share,
            textBtn: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String textBtn;
  final IconData icon;
  const CustomButton({super.key, required this.textBtn, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent, elevation: 0),
      onPressed: () {},
      child: Column(children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          textBtn,
          style: const TextStyle(color: Colors.blue),
        )
      ]),
    );
  }
}
