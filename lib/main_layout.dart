import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final Widget child;

  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Scaffold(
      backgroundColor: Colors.white,

      // 📱 MOBILE DRAWER
      endDrawer: isMobile
          ? Drawer(
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: [
                  const SizedBox(height: 40),
                  _drawerItem("Home", "/home", context),
                  _drawerItem("Gallery", "/gallery", context),
                  _drawerItem("Contact", "/contact", context),
                ],
              ),
            )
          : null,

      // 🔵 APPBAR
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color(0xFF6B4F3A),

        automaticallyImplyLeading: false,

        // 👇 THIS IS THE KEY FIX
        leading: const SizedBox(),
        actions: const [],

        title: isMobile ? _buildMobileNav(context) : _buildDesktopNav(context),
      ),

      // 🔵 PAGE CONTENT
      body: child,
    );
  }
}

//
// ================= DESKTOP NAV =================
//
Widget _buildDesktopNav(BuildContext context) {
  return SizedBox(
    height: 80,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.center,
      children: [
        // LEFT (LOGO + TITLE)
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
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

        // CENTER (NAV MENU)
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

        // RIGHT (CTA BUTTON)
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
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
  );
}

//
// ================= MOBILE NAV =================
//
Widget _buildMobileNav(BuildContext context) {
  return Builder(
    builder: (context) => Row(
      children: [
        // LOGO + SHORT NAME
        Row(
          children: [
            Image.asset('assets/images/lamiart_logo.png', height: 40),
            const SizedBox(width: 10),
            const Text(
              "Lami Art",
              style: TextStyle(
                fontFamily: 'Calligraphy',
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ],
        ),

        const Spacer(),

        // MENU ICON
        IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    ),
  );
}

//
// ================= NAV ITEM =================
//
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
        fontFamily: 'AppleGaramond',
        letterSpacing: 0.5,
      ),
    ),
  );
}

//
// ================= DRAWER ITEM =================
//
Widget _drawerItem(String title, String route, BuildContext context) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(fontFamily: 'AppleGaramond', fontSize: 16),
    ),
    onTap: () {
      Navigator.pop(context);
      Navigator.pushReplacementNamed(context, route);
    },
  );
}
