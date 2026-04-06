import 'package:flutter/material.dart';

class HomePageContent extends StatelessWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background image
        Positioned.fill(
          child: Image.asset('assets/images/page_bg.png', fit: BoxFit.cover),
        ),
        // Content overlay
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LayoutBuilder(
                  builder: (context, constraints) {
                    bool isWide = constraints.maxWidth > 800;
                    return isWide
                        ? Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Left: text
                              Expanded(
                                flex: 6,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 60.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                              255,
                                              65,
                                              4,
                                              0,
                                            ),
                                            height: 1.5,
                                          ),
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Welcome to Lami Art Studio. Our work here is about exploring West Africa Islamic Art, Islamic Arts, Arabic and English Calligraphy and how it all comes together.\n\n',
                                            ),
                                            WidgetSpan(
                                              child: Center(
                                                child: Text(
                                                  '“at first practice on a wooden slate board”',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontFamily: 'Calligraphy',
                                                    fontSize: 46,
                                                    color: const Color.fromARGB(
                                                      255,
                                                      65,
                                                      4,
                                                      0,
                                                    ),
                                                    height: 1.8,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            WidgetSpan(
                                              child: Center(
                                                child: Text(
                                                  'by Ibn Bawwab translation by M Zakariyah\n\n',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    color: const Color.fromARGB(
                                                      255,
                                                      65,
                                                      4,
                                                      0,
                                                    ),
                                                    height: 1.5,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  'Our vision is to craft stories and connections through Islamic arts. It is all about building connections with all these elements expressed through our art pieces, check out our gallery and shop, worksheets (coming soon) and research (blog coming soon).\n\n'
                                                  'Let’s tell a story together and let’s discover a world of Arabic calligraphy, West Africa and Islamic art.\n\n',
                                            ),
                                          ],
                                        ),
                                      ),
                                      // Signature aligned with left paragraph
                                      Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20.0,
                                        ),
                                        child: Image.asset(
                                          'assets/images/signature.png',
                                          height: 80, // adjust as needed
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 40),
                              // Right: image
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 30.0,
                                  ), // <-- moves image down
                                  child: Container(
                                    constraints: BoxConstraints(
                                      maxHeight: 600, // max height for scaling
                                    ),
                                    child: Image.asset(
                                      'assets/images/home_image1.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        : Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Text stacked vertically for small screens
                              RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 65, 4, 0),
                                    height: 1.5,
                                  ),
                                  children: [
                                    TextSpan(
                                      text:
                                          'Welcome to Lami Art Studio. Our work here is about exploring West Africa Islamic Art, Islamic Arts, Arabic and English Calligraphy and how it all comes together.\n\n',
                                    ),
                                    WidgetSpan(
                                      child: Center(
                                        child: Text(
                                          '“at first practice on a wooden slate board”',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: 'Calligraphy',
                                            fontSize: 46,
                                            color: const Color.fromARGB(
                                              255,
                                              65,
                                              4,
                                              0,
                                            ),
                                            height: 1.8,
                                          ),
                                        ),
                                      ),
                                    ),
                                    WidgetSpan(
                                      child: Center(
                                        child: Text(
                                          'by Ibn Bawwab translation by M Zakariyah\n\n',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: const Color.fromARGB(
                                              255,
                                              65,
                                              4,
                                              0,
                                            ),
                                            height: 1.5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Our vision is to craft stories and connections through Islamic arts. It is all about building connections with all these elements expressed through our art pieces, check out our gallery and shop, worksheets (coming soon) and research (blog coming soon).\n\n'
                                          'Let’s tell a story together and let’s discover a world of Arabic calligraphy, West Africa and Islamic art.\n\n',
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              Image.asset(
                                'assets/images/home_image1.png',
                                fit: BoxFit.contain,
                                height: 300, // smaller for mobile
                              ),
                              SizedBox(height: 20),
                              Image.asset(
                                'assets/images/signature.png',
                                height: 80,
                              ),
                            ],
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
