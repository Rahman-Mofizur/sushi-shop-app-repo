import 'package:flutter/material.dart';
import 'package:sushi_shop_app/pages/sushi_menu.dart';
import 'pages/sushi_main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MySushiMenu(),
    );
  }
}
