import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lami Art Studio',
      debugShowCheckedModeBanner: false,
      home: HomePage(), // Your homepage with AppBar
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Custom AppBar with image background
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/lamiart_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left side: logo + company name, perfectly centered vertically
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Wrap logo in a Center to ensure vertical alignment
                        Center(
                          child: Image.asset(
                            'assets/images/lamiart_logo.png',
                            height: 50,
                          ),
                        ),
                        SizedBox(width: 10),
                        // Wrap company name in a Center to align with logo
                        Center(
                          child: Image.asset(
                            'assets/images/lamiart_name.png',
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                    // Right side: navigation menu
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Gallery',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Contact Us',
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
      ),
      body: const HomePageContent(),
    );
  }
}
