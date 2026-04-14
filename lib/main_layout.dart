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

        title: SizedBox(
          height: 80,
          width: double.infinity,
          child: Stack(
            alignment: Alignment.center,

            children: [
              // ================= LEFT (LOGO) =================
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20), // 👈 ADD THIS
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/lamiart_logo.png', height: 60),
                      const SizedBox(width: 15),
                      const Text(
                        "Lami Art Studio",
                        style: TextStyle(
                          fontFamily: 'Calligraphy',
                          fontSize: 46,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // ================= CENTER (NAV MENU) =================
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _navItem("Home", "/home", context),
                    const SizedBox(width: 25),
                    _navItem("Gallery", "/gallery", context),
                    const SizedBox(width: 25),
                    _navItem("Contact", "/contact", context),
                  ],
                ),
              ),

              // ================= RIGHT (CTA BUTTON) =================
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20), // 👈 ADD THIS
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/contact");
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF6B4F3A),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 12,
                      ),
                    ),
                    child: const Text(
                      "Let's Talk",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // 🔵 PAGE CONTENT CHANGES HERE
      body: child,
    );
  }
}

Widget _navItem(String title, String route, BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.pushReplacementNamed(context, route);
    },
    child: Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontFamily: 'LiberationSans',
        letterSpacing: 0.5, // 👈 optional polish
      ),
    ),
  );
}
