import 'package:disenos/screens/basic_desing.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // for statusbar color
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Diseños 1',
      initialRoute: 'home',
      routes: {
        'basics': (_) => const BasicDesignScreen(),
        'scroll_sc': (_) => const ScrollScreen(),
        'home': (_) => const HomeScreen(),
      },
    );
  }
}
