import 'package:flutter/material.dart';
import 'home_page.dart'; // 👈 adjust path if needed
import 'gallery_page.dart';
import 'main_layout.dart';
import 'contact_page.dart';

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
        '/home': (context) => MainLayout(child: HomePage()),
        '/gallery': (context) => MainLayout(child: GalleryPage()),
        '/contact': (context) => MainLayout(child: ContactPage()),
      },
    );
  }
}
