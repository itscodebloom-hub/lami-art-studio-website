import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 🔵 SHARED APPBAR (VISIBLE ON ALL PAGES)
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFF6B4F3A),
        automaticallyImplyLeading: false,

        // LEFT SIDE (LOGO + TEXT)
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/lamiart_logo.png', height: 70),
            const SizedBox(width: 25),
            const Text(
              "Lami Art Studio",
              style: TextStyle(
                fontFamily: 'Calligraphy',
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ],
        ),

        // RIGHT SIDE (NAVIGATION)
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            child: const Text("Home", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/gallery');
            },
            child: const Text("Gallery", style: TextStyle(color: Colors.white)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/contact');
            },
            child: const Text("Contact", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),

      // 🔵 PAGE CONTENT CHANGES HERE
      body: child,
    );
  }
}
