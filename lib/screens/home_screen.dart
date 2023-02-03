import 'package:disenos/widgets/card_table.dart';
import 'package:disenos/widgets/index.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          BackgroundHome(),
          _BodyHome(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
    );
  }
}

class _BodyHome extends StatelessWidget {
  const _BodyHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: const [
        // titulos
        PageTitle(),
        // tabla
        CardTable(),
      ]),
    );
  }
}
