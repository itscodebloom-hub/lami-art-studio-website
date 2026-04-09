import 'package:flutter/material.dart';
import 'home_page.dart';
import 'gallery_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePageContent(),
        '/gallery': (context) => const GalleryPage(),
      },
    );
  }
}
